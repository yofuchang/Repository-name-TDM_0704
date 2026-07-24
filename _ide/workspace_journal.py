# 2026-07-21T21:16:55.756160200
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

comp.build()

vitis.dispose()

