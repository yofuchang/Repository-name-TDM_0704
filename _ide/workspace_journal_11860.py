# 2026-07-17T21:01:58.696495600
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

status = platform.build()

status = comp.clean()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="radar_loopback_test")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../rfclk_v1_3", files=["xrfclk.c", "xrfclk.h", "xrfclk_LMK_conf.h", "xrfclk_LMX_conf.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

comp = client.get_component(name="radar_loopback_test")
status = comp.import_files(from_loc="C:\Users\NTUTIASE\Downloads", files=["radar_loopback_fixed.zip"], dest_dir_in_cmp = "src")

status = comp.import_files(from_loc="C:\Users\NTUTIASE\Downloads", files=["xrfclk.c"], dest_dir_in_cmp = "src")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

