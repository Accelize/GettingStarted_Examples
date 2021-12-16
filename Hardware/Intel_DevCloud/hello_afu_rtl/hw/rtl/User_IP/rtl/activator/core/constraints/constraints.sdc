## define drm clock
create_clock -period 10.000 ns [get_ports DRM_ACLK]
create_clock -name drm_clock -period 10.000 -waveform {0.000 5.000} [get_ports DRM_ACLK]

## define ip core clock
create_clock -name ip_core_clock -period 10.000 -waveform {0.000 5.000} [get_ports IP_CORE_ACLK]

## set drm clock and ip core clock in two groups
## define both clocks as asynchronous
set_clock_groups -name drm_clock_group     -asynchronous -group { drm_clock     }
set_clock_groups -name ip_core_clock_group -asynchronous -group { ip_core_clock }

## set false path for each cdc structures

set_false_path -from [get_pins -hier -filter -name=~*/ID_S_60df9df8_1ba4afe_E*/*ID_S_68b58136_785ea8d4_E/C]  -to [get_pins -hier -filter -name=~*/ID_S_60df9df8_1ba4afe_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_1b65c3b1_32bb9e0d_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_1b65c3b1_32bb9e0d_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_2ffd3da2_495ac41d_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_2ffd3da2_495ac41d_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_7e8c96a9_7ccb54e6_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_7e8c96a9_7ccb54e6_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_21f84dc0_41868ed0_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_21f84dc0_41868ed0_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_16223867_6ba9e4e4_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_16223867_6ba9e4e4_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_a8352b3_f141d1d_E*/*ID_S_68b58136_785ea8d4_E/C]   -to [get_pins -hier -filter -name=~*/ID_S_a8352b3_f141d1d_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_2abf6074_623b6597_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_2abf6074_623b6597_E*/*ID_S_5e32896_1ee6cae5_E/D]
set_false_path -from [get_pins -hier -filter -name=~*/ID_S_1308a903_7d08da2e_E*/*ID_S_68b58136_785ea8d4_E/C] -to [get_pins -hier -filter -name=~*/ID_S_1308a903_7d08da2e_E*/*ID_S_5e32896_1ee6cae5_E/D]

## below is given the list of CDC instance names in the ip activator
## - ID_S_60df9df8_1ba4afe_E
## - ID_S_1b65c3b1_32bb9e0d_E
## - ID_S_2ffd3da2_495ac41d_E
## - ID_S_7e8c96a9_7ccb54e6_E
## - ID_S_21f84dc0_41868ed0_E
## - ID_S_16223867_6ba9e4e4_E
## - ID_S_a8352b3_f141d1d_E
## - ID_S_2abf6074_623b6597_E
## - ID_S_1308a903_7d08da2e_E

## below is given the source ff of the CDC structure
## - ID_S_68b58136_785ea8d4_E

## below is given the destination ff of the CDC structure
## - ID_S_5e32896_1ee6cae5_E
