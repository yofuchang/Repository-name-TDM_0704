# 2026-07-14T22:03:39.123378800
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

comp = client.get_component(name="lfm_tdm_gen")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

comp.build()

vitis.dispose()

