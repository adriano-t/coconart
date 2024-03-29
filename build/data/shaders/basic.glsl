interface VStoFS
{
    vec3 uv;
};

uniform mat4 wvp;
uniform sampler2DArray albedo; 

shader VSmain(in vec2 pos : 0, in vec3 uv : 1, out VStoFS Out)
{ 
	Out.uv = uv;
    gl_Position = vec4(pos, 0.0, 1.0);
}

shader FSmain(in VStoFS In)
{
	gl_FragColor = texture(albedo, In.uv);
}

program Basic
{
   	vs(330)=VSmain();
   	fs(330)=FSmain();
};