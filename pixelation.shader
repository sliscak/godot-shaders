// pixelate/pixelation shader

shader_type canvas_item;

uniform vec2 image_size = vec2(32, 32);

void fragment() {
	vec2 uv = floor(UV * image_size)/(image_size - 1.0);
	COLOR = texture(TEXTURE, uv);
