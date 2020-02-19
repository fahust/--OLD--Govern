attribute vec3 in_Position;                  // (x,y,z) //Coordinate of the pixel in the room
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 texCoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
  
    v_vColour = in_Colour;
    texCoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 texCoord;
varying vec4 v_vColour;

uniform vec2 spriteRes;
uniform vec2 UV;
uniform vec2 texelRes;

void main() {
    vec4 color = texture2D(gm_BaseTexture, texCoord);

    float radiusConstant = 4.0;
    vec2 midpoint = vec2(UV.x + spriteRes.x/2.0, UV.y + spriteRes.y/2.0);
    float dist = distance(texCoord.xy, midpoint);
    vec2 radius = vec2(texelRes.x*radiusConstant, texelRes.y*radiusConstant);
    if(step(dist, radius.x) == 0.0 && step(dist, radius.y) == 0.0) {
        color.g = 1.0;
    }
  
    gl_FragColor = v_vColour * color;
}
