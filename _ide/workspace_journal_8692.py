# 2026-07-07T20:42:52.742947900
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.build()

comp = client.get_component(name="radar_loopback_test")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

