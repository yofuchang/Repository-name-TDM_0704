# 2026-07-07T21:13:55.324915
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

