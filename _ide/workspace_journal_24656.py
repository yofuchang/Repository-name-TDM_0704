# 2026-07-07T13:25:12.607941900
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.get_component(name="radar_platform")
status = platform.build()

comp = client.get_component(name="radar_loopback_test")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

