// reference from:
// https://qiita.com/aa_debdeb/items/e416ae8a018692fc07eb#%E7%90%83%E9%9D%A2%E4%B8%8A%E3%81%AE%E4%B8%80%E6%A7%98%E4%B9%B1%E6%95%B0-1
void SetPositionOnSphereSurface(inout VFXAttributes attributes, in float3 positionOffset, in float radius)
{
    const float pi = 3.14159265;
    float cosTheta = -2.0 * VFXRAND + 1.0;
    float sinTheta = sqrt(1.0 - cosTheta * cosTheta);
    float phi = 2.0 * pi * VFXRAND;

    attributes.position = radius * float3(sinTheta * cos(phi), sinTheta * sin(phi), cosTheta) + positionOffset;
}
