#version 150

#moj_import <vsh_util.glsl>
#moj_import <config.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec4 FogColor;
uniform mat3 IViewRotMat;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

//看板の文字やモブの名前の文字の描画
void main() {
    //もし看板の文字やモブの名前の文字の場合
    if(Position.z < 0.0) {
        //GENERALの描画を呼び出す(include/position.glsl参照)
        #define GENERAL
        #moj_import <position.glsl>
        //カメラと頂点の距離？霧の描画に影響します
        vertexDistance = length((ModelViewMat * vec4(rotateX(rtx / -57.0) * rotateY((rty - 180.0) / -57.0) * rotateZ(rtz / -90.0) * viewpos, 1.0)).xyz);
    } else {
        //通常の描画
        vec3 pos= Position;
        if (Color.rgb == vec3(0.98431372549)) {
            pos.y = pos.y + 20.0;
            pos.y += (1.0 - Color.a) * 20.0;
        }
        if (0.243 <= Color.r && Color.r <= 0.244 && 0.243 <= Color.g && Color.g <= 0.244 && 0.243 <= Color.b && Color.b <= 0.244) {
            pos.y = pos.y + 20.0;
            pos.y += (1.0 - Color.a) * 20.0;
        }
        gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
        vertexDistance = length((ModelViewMat * vec4(pos, 1.0)).xyz);
    }
    //通常の処理
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}