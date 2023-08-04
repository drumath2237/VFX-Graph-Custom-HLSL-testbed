void Rand3Position(inout VFXAttributes attributes, in float3 offset)
{
    float3 rand = VFXRAND3;
    attributes.position = rand + offset;
}
