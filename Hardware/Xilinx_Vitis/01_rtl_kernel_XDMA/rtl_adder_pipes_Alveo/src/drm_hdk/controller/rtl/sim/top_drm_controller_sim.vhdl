-- pragma translate_off
---------------------------------------------------------------------
----
---- Accelize 2019
----
---- This is a generated file. Use and modify at your own risk.
---------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_misc.all;

library DRM_LIBRARY;


entity top_drm_controller is
port (
  -- AXI4-Stream Clock and Reset
  drm_aclk              : in  std_logic;
  drm_arstn             : in  std_logic;
  -- AXI4-Stream Bus to/from User IP0
  drm_to_uip0_tready    : in  std_logic;
  drm_to_uip0_tvalid    : out std_logic;
  drm_to_uip0_tdata     : out std_logic_vector(31 downto 0);
  uip0_to_drm_tready    : out std_logic;
  uip0_to_drm_tvalid    : in  std_logic;
  uip0_to_drm_tdata     : in  std_logic_vector(31 downto 0);
  -- AXI4-Lite Register Access
  s_axi_aclk            : in  std_logic;
  s_axi_arstn           : in  std_logic;
  s_axi_awready         : out std_logic;
  s_axi_awvalid         : in  std_logic;
  s_axi_awaddr          : in  std_logic_vector(15 downto 0);
  s_axi_awprot          : in  std_logic_vector(2 downto 0);
  s_axi_wready          : out std_logic;
  s_axi_wvalid          : in  std_logic;
  s_axi_wdata           : in  std_logic_vector(31 downto 0);
  s_axi_wstrb           : in  std_logic_vector(3 downto 0);
  s_axi_bready          : in  std_logic;
  s_axi_bvalid          : out std_logic;
  s_axi_bresp           : out std_logic_vector(1 downto 0);
  s_axi_arready         : out std_logic;
  s_axi_arvalid         : in  std_logic;
  s_axi_araddr          : in  std_logic_vector(15 downto 0);
  s_axi_arprot          : in  std_logic_vector(2 downto 0);
  s_axi_rready          : in  std_logic;
  s_axi_rvalid          : out std_logic;
  s_axi_rdata           : out std_logic_vector(31 downto 0);
  s_axi_rresp           : out std_logic_vector(1 downto 0);
  -- Chip DNA
  chip_dna_valid        : out std_logic;
  chip_dna              : out std_logic_vector(95 downto 0)
);
end entity top_drm_controller;

architecture top_drm_controller_rtl of top_drm_controller is

  constant FREQ_CNT_VERSION : std_logic_vector(31 downto 0) := x"60DC0DE0";

  signal drm_bus_master_o_cyc : std_ulogic;
  signal drm_bus_master_o_we  : std_ulogic;
  signal drm_bus_master_o_adr : std_logic_vector(1 downto 0);
  signal drm_bus_master_o_dat : std_logic_vector(0 downto 0);

  signal rd_select_s1: std_ulogic_vector(1 downto 0);
  signal wr_select_s1: std_ulogic_vector(1 downto 0);

  signal s0_axi_awvalid : std_ulogic;
  signal s0_axi_awready : std_ulogic;
  signal s0_axi_wvalid : std_ulogic;
  signal s0_axi_wready : std_ulogic;
  signal s0_axi_bvalid : std_ulogic;
  signal s0_axi_bready : std_ulogic;
  signal s0_axi_bresp : std_logic_vector(1 downto 0);
  signal s0_axi_arvalid : std_ulogic;
  signal s0_axi_arready : std_ulogic;
  signal s0_axi_rvalid : std_ulogic;
  signal s0_axi_rready : std_ulogic;
  signal s0_axi_rdata : std_logic_vector(31 downto 0);
  signal s0_axi_rresp : std_logic_vector(1 downto 0);

  signal s1_axi_awvalid : std_ulogic;
  signal s1_axi_awready : std_ulogic;
  signal s1_axi_wvalid : std_ulogic;
  signal s1_axi_wready : std_ulogic;
  signal s1_axi_bvalid : std_ulogic;
  signal s1_axi_bready : std_ulogic;
  signal s1_axi_bresp : std_logic_vector(1 downto 0);
  signal s1_axi_arvalid : std_ulogic;
  signal s1_axi_arready : std_ulogic;
  signal s1_axi_rvalid : std_ulogic;
  signal s1_axi_rready : std_ulogic;
  signal s1_axi_rdata : std_logic_vector(31 downto 0);
  signal s1_axi_rresp : std_logic_vector(1 downto 0);

  signal counter : std_logic_vector(31 downto 0);
  signal wr_active : std_ulogic;
  signal rd_active : std_ulogic;
  signal rd_addr : std_logic_vector(15 downto 0);

  signal i_s_axi_bvalid : std_ulogic;
  signal i_s_axi_rvalid : std_ulogic;

  signal chip_dna_i : std_logic_vector(95 downto 0);

  signal i_drm_to_uip0_tdata  : std_logic_vector(31 downto 0);
  signal i_uip0_to_drm_tdata  : std_logic_vector(31 downto 0);

begin

  chip_dna <= chip_dna_i;


  ---------------------------------------
  -- DRM Controller to/from User IP0
  ---------------------------------------

  uip0_to_drm_tready               <= '1';

  drm_to_uip0_tvalid               <= '1';

  i_drm_to_uip0_tdata(0)           <= drm_bus_master_o_dat(0);
  i_drm_to_uip0_tdata(1)           <= drm_bus_master_o_we;
  i_drm_to_uip0_tdata(3 downto 2)  <= drm_bus_master_o_adr;
  i_drm_to_uip0_tdata(4)           <= drm_bus_master_o_cyc;
  i_drm_to_uip0_tdata(31 downto 6) <= (others=>'0');

  WITH_BFM_ON_IP0: if WORK.drm_activator_0x1003000e00010001_sim_pkg.USE_BFM=TRUE generate
    drm_to_uip0_tdata   <= uip0_to_drm_tdata;
    i_uip0_to_drm_tdata <= (others=>'0');
  end generate;

  WITHOUT_BFM_ON_IP0: if WORK.drm_activator_0x1003000e00010001_sim_pkg.USE_BFM=FALSE generate
    i_uip0_to_drm_tdata <= uip0_to_drm_tdata;
    drm_to_uip0_tdata   <= i_drm_to_uip0_tdata;
  end generate;


  ------------------------------------------------------------------------------------------------
  -- AXI4-Lite Switch between DRM Controller (m0) and 32-bit counter for frequency detection (m1)
  ------------------------------------------------------------------------------------------------

  s_axi_bvalid <= i_s_axi_bvalid;

  -- Write selecter
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        wr_select_s1 <= "00";
      elsif wr_select_s1="00" and s_axi_awvalid = '1' then
        wr_select_s1 <= and_reduce(s_axi_awaddr(15 downto 3)) & '1';
      elsif i_s_axi_bvalid = '1' and s_axi_bready = '1' then
        wr_select_s1 <= "00";
      end if;
    end if;
  end process;

  -- Write request
  s0_axi_awvalid <= s_axi_awvalid when wr_select_s1="01" else '0';
  s1_axi_awvalid <= s_axi_awvalid when wr_select_s1="11" else '0';

  s_axi_awready  <= s0_axi_awready when wr_select_s1="01" else
                    s1_axi_awready when wr_select_s1="11" else
                    '0';

  -- Write data
  s0_axi_wvalid  <= s_axi_wvalid when wr_select_s1="01" else '0';
  s1_axi_wvalid  <= s_axi_wvalid when wr_select_s1="11" else '0';

  s_axi_wready   <= s0_axi_wready when wr_select_s1="01" else
                    s1_axi_wready when wr_select_s1="11" else
                    '0';

  -- Write response
  i_s_axi_bvalid   <= s0_axi_bvalid when wr_select_s1="01" else
                      s1_axi_bvalid when wr_select_s1="11" else
                      '0';

  s0_axi_bready  <= s_axi_bready when wr_select_s1="01" else '0';
  s1_axi_bready  <= s_axi_bready when wr_select_s1="11" else '0';

  s_axi_bresp    <= s0_axi_bresp when wr_select_s1="01" else
                    s1_axi_bresp when wr_select_s1="11" else
                    "00";


  s_axi_rvalid <= i_s_axi_rvalid;

  -- Read selecter
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        rd_select_s1 <= "00";
      elsif rd_select_s1 = "00" and s_axi_arvalid = '1' then
        rd_select_s1 <= and_reduce(s_axi_araddr(15 downto 3)) & '1';
      elsif i_s_axi_rvalid = '1' and s_axi_rready = '1' then
        rd_select_s1 <= "00";
      end if;
    end if;
  end process;

  -- Read request
  s0_axi_arvalid <= s_axi_arvalid when rd_select_s1="01" else '0';
  s1_axi_arvalid <= s_axi_arvalid when rd_select_s1="11" else '0';

  s_axi_arready  <= s0_axi_arready when rd_select_s1="01" else
                    s1_axi_arready when rd_select_s1="11" else
                    '0';

  -- Read data
  i_s_axi_rvalid   <= s0_axi_rvalid when rd_select_s1="01" else
                      s1_axi_rvalid when rd_select_s1="11" else
                      '0';

  s0_axi_rready  <= s_axi_rready when rd_select_s1="01" else '0';
  s1_axi_rready  <= s_axi_rready when rd_select_s1="11" else '0';

  s_axi_rdata    <= s0_axi_rdata when rd_select_s1="01" else
                    s1_axi_rdata when rd_select_s1="11" else
                    (others=>'0');

  s_axi_rresp    <= s0_axi_rresp when rd_select_s1="01" else
                    s1_axi_rresp when rd_select_s1="11" else
                    "00";


  ---------------------------------
  -- PCIe AXI-Lite Slave Accesses
  ---------------------------------
  -- Only supports single-beat accesses.

  -- Write Request
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        wr_active <= '0';
      elsif wr_active = '0' and s1_axi_awvalid = '1' then
        wr_active <= '1';
      elsif wr_active = '1' and s1_axi_bvalid = '1' and s1_axi_bready = '1' then
        wr_active <= '0';
      end if;
    end if;
  end process;

  s1_axi_awready <= not(wr_active) and s_axi_arstn;
  s1_axi_wready  <=     wr_active  and s1_axi_wvalid;

  -- Write Response
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        s1_axi_bvalid <= '0';
      elsif s1_axi_bvalid = '0' and s1_axi_wready = '1' then
        s1_axi_bvalid <= '1';
      elsif s1_axi_bvalid = '1' and s1_axi_bready = '1' then
        s1_axi_bvalid <= '0';
      end if;
    end if;
  end process;

  s1_axi_bresp <= "00";

  -- Read Request
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        rd_active <= '0';
        rd_addr   <= (others=>'0');
      elsif rd_active = '0' and s1_axi_arvalid = '1' then
        rd_active <= '1';
        rd_addr   <= s_axi_araddr;
      elsif rd_active = '1' and s1_axi_rvalid = '1' and s1_axi_rready = '1' then
        rd_active <= '0';
      end if;
    end if;
  end process;

  s1_axi_arready <= not(rd_active) and s_axi_arstn;

  -- Read Data
  s1_axi_rvalid  <= rd_active;
  s1_axi_rdata   <= counter when rd_addr(2) = '1' else FREQ_CNT_VERSION;
  s1_axi_rresp   <= "00";


  -- Counter used to estimate DRM Controller frequency
  process(s_axi_aclk) begin
    if rising_edge(s_axi_aclk) then
      if s_axi_arstn = '0' then
        counter <= (others=>'1');
      elsif wr_active = '1' then
        counter <= (others=>'0');
      elsif and_reduce(counter) = '0' then
        counter <= counter + '1';
      end if;
    end if;
  end process;


  ---------------------
  -- DRM Controller
  ---------------------
  -- A DRM must be instanciated and must be connected at least to one activator block (that will be inside the loopback example).

  drm_ip_controller_inst: entity DRM_LIBRARY.drm_ip_controller
  port map (
    -- AXI4-Lite Register Access
    sys_axi4_aclk                    => s_axi_aclk             ,
    sys_axi4_arstn                   => s_axi_arstn            ,
    sys_axi4_bus_slave_o_aw_ready    => s0_axi_awready         ,
    sys_axi4_bus_slave_i_aw_valid    => s0_axi_awvalid         ,
    sys_axi4_bus_slave_i_aw_addr     => s_axi_awaddr           ,
    sys_axi4_bus_slave_i_aw_prot     => s_axi_awprot           ,
    sys_axi4_bus_slave_o_w_ready     => s0_axi_wready          ,
    sys_axi4_bus_slave_i_w_valid     => s0_axi_wvalid          ,
    sys_axi4_bus_slave_i_w_data      => s_axi_wdata            ,
    sys_axi4_bus_slave_i_w_strb      => s_axi_wstrb            ,
    sys_axi4_bus_slave_i_b_ready     => s0_axi_bready          ,
    sys_axi4_bus_slave_o_b_valid     => s0_axi_bvalid          ,
    sys_axi4_bus_slave_o_b_resp      => s0_axi_bresp           ,
    sys_axi4_bus_slave_o_ar_ready    => s0_axi_arready         ,
    sys_axi4_bus_slave_i_ar_valid    => s0_axi_arvalid         ,
    sys_axi4_bus_slave_i_ar_addr     => s_axi_araddr           ,
    sys_axi4_bus_slave_i_ar_prot     => s_axi_arprot           ,
    sys_axi4_bus_slave_i_r_ready     => s0_axi_rready          ,
    sys_axi4_bus_slave_o_r_valid     => s0_axi_rvalid          ,
    sys_axi4_bus_slave_o_r_data      => s0_axi_rdata           ,
    sys_axi4_bus_slave_o_r_resp      => s0_axi_rresp           ,
    chip_dna_valid                   => chip_dna_valid         ,
    chip_dna                         => chip_dna_i             ,
    -- DRM Bus Clock and Reset
    drm_aclk                         => drm_aclk               ,
    drm_arstn                        => drm_arstn              ,
    -- DRM Specific Bus to User IP0
    drm_bus_master_i_dat_0           => i_uip0_to_drm_tdata(0 downto 0) ,
    drm_bus_master_i_sta_0           => i_uip0_to_drm_tdata(1) ,
    drm_bus_master_i_intr_0          => i_uip0_to_drm_tdata(2) ,
    drm_bus_master_i_ack_0           => i_uip0_to_drm_tdata(3) ,
    drm_bus_master_o_cs_0            => i_drm_to_uip0_tdata(5) ,
    -- DRM Common Bus
    drm_bus_master_o_cyc             => drm_bus_master_o_cyc   ,
    drm_bus_master_o_we              => drm_bus_master_o_we    ,
    drm_bus_master_o_adr             => drm_bus_master_o_adr   ,
    drm_bus_master_o_dat             => drm_bus_master_o_dat
  );


end architecture top_drm_controller_rtl;
-- pragma translate_on
