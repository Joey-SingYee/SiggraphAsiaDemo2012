/*
massFS.glsl
Fragment shader for drawing gaussian particles.

Laurence Emms
*/

#version 400

in vec4 wpos_g;
in vec4 ppos_g;
in vec2 texcoord_g;

layout(location = 0) out vec4 color_f;

void main()
{
	vec2 r = texcoord_g - vec2(0.5, 0.5);
	float l_r = length(r);
	if (l_r > 0.5f) {
		discard;
	}

	color_f = vec4(wpos_g.xyz, 1.0);
}
