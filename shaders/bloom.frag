#pragma header

uniform float iTime;
#define iChannel0 bitmap
#define iResolution vec3(openfl_TextureSize, 0.)
#define texture flixel_texture2D

// third argument fix
vec4 flixel_texture2D(sampler2D bitmap, vec2 coord, float bias) {
    vec4 color = texture2D(bitmap, coord, bias);
    if (!hasTransform)
    {
        return color;
    }
    if (color.a == 0.0)
    {
        return vec4(0.0, 0.0, 0.0, 0.0);
    }
    if (!hasColorTransform)
    {
        return color * openfl_Alphav;
    }
    color = vec4(color.rgb / color.a, color.a);
    mat4 colorMultiplier = mat4(0);
    colorMultiplier[0][0] = openfl_ColorMultiplierv.x;
    colorMultiplier[1][1] = openfl_ColorMultiplierv.y;
    colorMultiplier[2][2] = openfl_ColorMultiplierv.z;
    colorMultiplier[3][3] = openfl_ColorMultiplierv.w;
    color = clamp(openfl_ColorOffsetv + (color * colorMultiplier), 0.0, 1.0);
    if (color.a > 0.0)
    {
        return vec4(color.rgb * color.a * openfl_Alphav, color.a * openfl_Alphav);
    }
    return vec4(0.0, 0.0, 0.0, 0.0);
}

uniform float intensity;
const float blurSize = 5.0 / 1024.0;
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
   vec4 sum = vec4(0);
   vec2 texcoord = fragCoord.xy / iResolution.xy;
   int j;
   int i;

   sum += texture(iChannel0, vec2(texcoord.x - 4.0 * blurSize, texcoord.y)) * 0.05;
   sum += texture(iChannel0, vec2(texcoord.x - 3.0 * blurSize, texcoord.y)) * 0.09;
   sum += texture(iChannel0, vec2(texcoord.x - 2.0 * blurSize, texcoord.y)) * 0.12;
   sum += texture(iChannel0, vec2(texcoord.x - blurSize, texcoord.y)) * 0.15;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y)) * 0.16;
   sum += texture(iChannel0, vec2(texcoord.x + blurSize, texcoord.y)) * 0.15;
   sum += texture(iChannel0, vec2(texcoord.x + 2.0 * blurSize, texcoord.y)) * 0.12;
   sum += texture(iChannel0, vec2(texcoord.x + 3.0 * blurSize, texcoord.y)) * 0.09;
   sum += texture(iChannel0, vec2(texcoord.x + 4.0 * blurSize, texcoord.y)) * 0.05;
    
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y - 4.0 * blurSize)) * 0.05;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y - 3.0 * blurSize)) * 0.09;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y - 2.0 * blurSize)) * 0.12;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y - blurSize)) * 0.15;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y)) * 0.16;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y + blurSize)) * 0.15;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y + 2.0 * blurSize)) * 0.12;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y + 3.0 * blurSize)) * 0.09;
   sum += texture(iChannel0, vec2(texcoord.x, texcoord.y + 4.0 * blurSize)) * 0.05;

   fragColor = sum * intensity + texture(iChannel0, texcoord); 
}

void main() {
    mainImage(gl_FragColor, openfl_TextureCoordv * openfl_TextureSize);
}
