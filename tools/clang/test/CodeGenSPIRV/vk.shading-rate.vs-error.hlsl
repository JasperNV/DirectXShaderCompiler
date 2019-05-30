// Run: %dxc -T vs_6_4 -E main

void main(uint rate : SV_ShadingRate) {
    // Don't need anything.
}

// CHECK:  :3:16: error: invalid usage of semantic 'SV_ShadingRate' in shader profile vs
