// Run: %dxc -T cs_6_0 -E main

// CHECK: ; Version: 1.3

RWStructuredBuffer<uint> values;

// CHECK: OpCapability GroupNonUniform

[numthreads(32, 1, 1)]
void main(uint3 id: SV_DispatchThreadID) {
// CHECK: {{%\d+}} = OpGroupNonUniformElect %bool %int_3
    values[id.x] = WaveIsFirstLane();
}