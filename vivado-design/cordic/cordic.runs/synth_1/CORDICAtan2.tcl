# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/ProjectCordic/vivado-design/cordic/cordic.cache/wt [current_project]
set_property parent.project_path E:/ProjectCordic/vivado-design/cordic/cordic.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo e:/ProjectCordic/vivado-design/cordic/cordic.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  E:/ProjectCordic/src/accumulator.vhd
  E:/ProjectCordic/src/accumulatoren.vhd
  E:/ProjectCordic/src/addersubtractor.vhd
  E:/ProjectCordic/src/arithmeticshifter.vhd
  E:/ProjectCordic/src/atan2.vhd
  E:/ProjectCordic/src/cordic.vhd
  E:/ProjectCordic/src/counterwithmax.vhd
  E:/ProjectCordic/src/fulladder.vhd
  E:/ProjectCordic/src/gregister.vhd
  E:/ProjectCordic/src/gregisteren.vhd
  E:/ProjectCordic/src/muxwithoffset.vhd
  E:/ProjectCordic/src/rotator.vhd
  E:/ProjectCordic/src/shiftadjuster.vhd
  E:/ProjectCordic/src/specialcase.vhd
  E:/ProjectCordic/src/cordicatan2.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/ProjectCordic/vivado-design/cordic/cordic.srcs/constrs_1/new/cordic_constraints.xdc
set_property used_in_implementation false [get_files E:/ProjectCordic/vivado-design/cordic/cordic.srcs/constrs_1/new/cordic_constraints.xdc]


synth_design -top CORDICAtan2 -part xc7z010clg400-3


write_checkpoint -force -noxdef CORDICAtan2.dcp

catch { report_utilization -file CORDICAtan2_utilization_synth.rpt -pb CORDICAtan2_utilization_synth.pb }
