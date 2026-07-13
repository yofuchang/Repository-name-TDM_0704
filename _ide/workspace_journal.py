# 2026-07-07T21:50:21.418398400
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.build()

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

comp = client.create_hls_component(name = "lfm_tdm_gen",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lfm_tdm_gen")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

comp = client.get_component(name="radar_loopback_test")
status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

