# 2026-07-04T17:03:04.453959600
import vitis

client = vitis.create_client()
client.set_workspace(path="TDM_0704")

platform = client.create_platform_component(name = "radar_platform",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="radar_loopback_test",platform = "$COMPONENT_LOCATION/../radar_platform/export/radar_platform/radar_platform.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="radar_platform")
status = platform.build()

comp = client.get_component(name="radar_loopback_test")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

comp.build()

vitis.dispose()

