// pixelate/pixelation shader

shader_type canvas_item;

uniform vec2 output_size = vec2(32, 32);

void fragment() {
	vec2 uv = floor(UV * output_size)/(output_size - 1.0);
	COLOR = texture(TEXTURE, uv);
