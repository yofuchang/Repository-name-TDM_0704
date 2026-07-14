# 2026-07-14T14:15:13.425600600
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

comp = client.get_component(name="lfm_tdm_gen")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

platform = client.get_component(name="radar_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

