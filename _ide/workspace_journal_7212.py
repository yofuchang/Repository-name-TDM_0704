# 2026-07-16T15:30:12.352973900
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.build()

comp = client.get_component(name="radar_loopback_test")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

comp = client.create_hls_component(name = "iq_to_real",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="iq_to_real")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "adc_packetizer",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="adc_packetizer")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

client.delete_component(name="adc_packetizer")

comp = client.create_hls_component(name = "adc_packetizer",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

vitis.dispose()

