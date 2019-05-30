// Run: %dxc -T ps_6_4 -E main

float4 main(uint rate : SV_ShadingRate) : SV_TARGET {
// CHECK:   OpDecorate [[r:%\d+]] BuiltIn FragSizeEXT
    return float4(rate, 0, 0, 0);
// CHECK:   [[v:%\d+]] = OpLoad %v2int [[r]]
// CHECK:     {{%\d+}} = OpCompositeExtract %int [[v]] 0
// CHECK:     {{%\d+}} = OpCompositeExtract %int [[v]] 1
}
