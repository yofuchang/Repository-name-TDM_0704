# 2026-07-07T15:02:54.507683500
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="radar_loopback_test")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

