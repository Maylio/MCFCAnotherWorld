#version 150

#moj_import <vsh_util.glsl>
#moj_import <config.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in vec2 UV2;
in vec3 Normal;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform vec4 FogColor;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;
out vec4 normal;

//ビーコンのビームや発光エフェクト、掘られているブロックの描画
void main() {
    //GENERALの描画を呼び出す(include/position.glsl参照)
    #define GENERAL
    #moj_import <position.glsl>
    //カメラと頂点の距離？霧の描画に影響します
    vertexDistance = length((ModelViewMat * vec4(rotateX(rtx / -57.0) * rotateY((rty - 180.0) / -57.0) * rotateZ(rtz / -90.0) * viewpos, 1.0)).xyz);


    //通常の処理
    vertexColor = Color;
    texCoord0 = UV0;
    texCoord1 = UV1;
    texCoord2 = UV2;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}
