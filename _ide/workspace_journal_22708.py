# 2026-07-07T17:14:37.862628
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

