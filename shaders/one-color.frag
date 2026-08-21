#pragma header

uniform vec3 targetColor;

void main()
{
  vec4 color = flixel_texture2D(bitmap, openfl_TextureCoordv);

  float biggestVariable = max(max(color.r, color.g), color.b);
  color.rgb = vec3(biggestVariable * targetColor.x, biggestVariable * targetColor.y, biggestVariable * targetColor.z);

  gl_FragColor = color;
}