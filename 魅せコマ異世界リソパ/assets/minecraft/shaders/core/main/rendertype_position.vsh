#version 150

#moj_import <vsh_util.glsl>
#moj_import <config.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV2;
in vec3 Normal;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec4 FogColor;
uniform mat3 IViewRotMat;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord2;
out vec4 normal;

//空の描画
void main() {
    //もしGUIじゃ無い場合(include/vsh_util.glsl参照)
    if(isGUI(ProjMat) == false) {
        //ModelViewMatを無効化する
        gl_Position = ProjMat * ModelViewMat * inverse(ModelViewMat) * vec4(Position, 1.0);
        ////カメラと頂点の距離？霧の描画に影響します
        vertexDistance = length((ModelViewMat * inverse(ModelViewMat) * vec4(Position, 1.0)).xyz);
    } else {
        //通常の処理
        gl_Position = ProjMat * ModelViewMat * (vec4(Position, 1.0));
        vertexDistance = length((ModelViewMat * vec4(Position, 1.0)).xyz);
    }
    //通常の処理
    vertexColor = Color;
    texCoord0 = UV0;
    texCoord2 = UV2;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}
