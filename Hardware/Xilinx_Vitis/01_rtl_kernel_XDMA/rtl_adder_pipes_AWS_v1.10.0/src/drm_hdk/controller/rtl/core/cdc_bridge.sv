/////////////////////////////////////////////////////////////////////
////
//// Accelize 2019
////
//// This is a CDC with handshake supporting pulse or level
/////////////////////////////////////////////////////////////////////

// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps

module cdc_bridge
#(
  parameter NUM_CDC_STAGE = 2,
  parameter BIT_IS_PULSE  = 0,
  parameter DISABLE_READY = 0
)(
  // Source domain
  input  wire  src_aclk,
  input  wire  src_arstn,
  input  wire  src_bit,
  output wire  src_ready,
  // Destination domain
  input  wire  dst_aclk,
  input  wire  dst_arstn,
  output reg   dst_bit
);

  (* ASYNC_REG = "TRUE" *) reg  [NUM_CDC_STAGE-1:0]  dst_arstn_fs;

  reg                                                src_req;
  (* ASYNC_REG = "TRUE" *) reg  [NUM_CDC_STAGE-1:0]  src_bit_fd;
  reg                                                src_ack;

  reg                                                dst_ack;
  reg                                                dst_ack_d;
  (* ASYNC_REG = "TRUE" *) reg  [NUM_CDC_STAGE-1:0]  dst_ack_fs;

  wire                                               src_ready_i;


  generate if (DISABLE_READY == 0) begin
      assign src_ready = src_ready_i;
    end else begin
      assign src_ready = 1'b1;
    end endgenerate


  //---------------------------------------
  // SOURCE BIT IS A LEVEL SENSITIVE SIGNAL
  //---------------------------------------
  generate if (BIT_IS_PULSE == 0) begin

    // CDC from destionation to source
    always@(posedge src_aclk) begin
      if (~src_arstn) begin
        dst_arstn_fs <= {NUM_CDC_STAGE{1'b0}};
        dst_ack_fs   <= {NUM_CDC_STAGE{1'b0}};
      end else begin
        dst_arstn_fs[0]                 <= dst_arstn;
        dst_arstn_fs[NUM_CDC_STAGE-1:1] <= dst_arstn_fs[NUM_CDC_STAGE-2:0];
        dst_ack_fs[0]                   <= dst_bit;
        dst_ack_fs[NUM_CDC_STAGE-1:1]   <= dst_ack_fs[NUM_CDC_STAGE-2:0];
      end
    end

    // CDC from source to destionation
    always@(posedge dst_aclk) begin
      if (~dst_arstn) begin
        src_bit_fd <= {NUM_CDC_STAGE{1'b0}};
      end else begin
        src_bit_fd[0]                 <= src_bit;
        src_bit_fd[NUM_CDC_STAGE-1:1] <= src_bit_fd[NUM_CDC_STAGE-2:0];
      end
    end

    assign src_ready_i = (~&dst_arstn_fs   ) ? 1'b0 :
                         (src_req ^ src_bit) ? 1'b0 :
                                               dst_ack;

    // Generate output on destination domain
    always@(posedge dst_aclk) begin
      if (~dst_arstn) begin
        dst_bit <= 1'b0;
      end else begin
        dst_bit <= src_bit_fd[NUM_CDC_STAGE-1];
      end
    end

    // Synch destination bit in src domain
    always@(posedge src_aclk) begin
      if (~src_arstn) begin
        src_req <= 1'b0;
        dst_ack <= 1'b0;
      end else begin
        src_req <= src_bit;
        //dst_ack <= ~(src_bit ^ dst_ack_fs[NUM_CDC_STAGE-1]);
        if (dst_ack_fs[NUM_CDC_STAGE-1] == src_bit) begin
          dst_ack <= 1'b1;
        end else begin
          dst_ack <= 1'b0;
        end
      end
    end


  //------------------------------------
  // SOURCE BIT IS A 1 CLOCK CYCLE PULSE
  //------------------------------------
  end else begin

    // CDC from destionation to source
    always@(posedge src_aclk) begin
      if (~src_arstn) begin
        dst_arstn_fs <= {NUM_CDC_STAGE{1'b0}};
        dst_ack_fs   <= {NUM_CDC_STAGE{1'b0}};
      end else begin
        dst_arstn_fs[0]                 <= dst_arstn;
        dst_arstn_fs[NUM_CDC_STAGE-1:1] <= dst_arstn_fs[NUM_CDC_STAGE-2:0];
        dst_ack_fs[0]                   <= dst_ack;
        dst_ack_fs[NUM_CDC_STAGE-1:1]   <= dst_ack_fs[NUM_CDC_STAGE-2:0];
      end
    end

    // CDC from source to destionation
    always@(posedge dst_aclk) begin
      if (~dst_arstn) begin
        src_bit_fd <= {NUM_CDC_STAGE{1'b0}};
      end else begin
        src_bit_fd[0]                 <= src_req;
        src_bit_fd[NUM_CDC_STAGE-1:1] <= src_bit_fd[NUM_CDC_STAGE-2:0];
      end
    end

    assign src_ready_i = &dst_arstn_fs & ~src_bit & ~src_req & ~|dst_ack_fs;

    // Capture pulse on src domain
    always@(posedge src_aclk) begin
      if (~src_arstn) begin
        src_req <= 1'b0;
      end else begin
        if (src_bit) begin
            src_req <= 1'b1;
        end else if (src_req && dst_ack_fs[NUM_CDC_STAGE-1]) begin
          src_req <= 1'b0;
        end
      end
    end

    // Generate pulse on dest domain
    always@(posedge dst_aclk) begin
      if (~dst_arstn) begin
        dst_ack <= 1'b0;
        dst_bit <= 1'b0;
      end else begin
        dst_ack <= src_bit_fd[NUM_CDC_STAGE-1];
        dst_bit <= ~dst_ack & src_bit_fd[NUM_CDC_STAGE-1];
      end
    end

  end endgenerate

endmodule
`default_nettype wire