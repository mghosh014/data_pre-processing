
set TopModule "double_subtraction"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z045:-ffg900:-2
set SourceFiles {sc {} c ../core.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/Mukesh/AppData/Roaming/Xilinx/Vivado/DS/solution1/solution1.directive
set TBFiles {verilog {../test_core.cpp csim/build/double_output.bin csim/build/Scanaxial_13_04_2021_N_1_io.bin csim/build/Scanaxial_13_04_2021_N_0_Pha.bin} bc {../test_core.cpp csim/build/double_output.bin csim/build/Scanaxial_13_04_2021_N_1_io.bin csim/build/Scanaxial_13_04_2021_N_0_Pha.bin} sc {../test_core.cpp csim/build/double_output.bin csim/build/Scanaxial_13_04_2021_N_1_io.bin csim/build/Scanaxial_13_04_2021_N_0_Pha.bin} vhdl {../test_core.cpp csim/build/double_output.bin csim/build/Scanaxial_13_04_2021_N_1_io.bin csim/build/Scanaxial_13_04_2021_N_0_Pha.bin} c {} cas {../test_core.cpp csim/build/double_output.bin csim/build/Scanaxial_13_04_2021_N_1_io.bin csim/build/Scanaxial_13_04_2021_N_0_Pha.bin}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
