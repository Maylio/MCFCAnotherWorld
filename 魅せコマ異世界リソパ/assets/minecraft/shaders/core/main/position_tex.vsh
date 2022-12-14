#version 150

#moj_import <vsh_util.glsl>
#moj_import <config.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV2;
in vec3 Normal;

uniform mat4 ModelViewMat;
uniform vec4 FogColor;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord2;
out vec4 normal;


//空や太陽、ワールドボーダーの描画
void main() {
    //もしGUIでも太陽でも無い場合(include/vsh_util.glsl参照)
    if(isGUI(ProjMat) == false && isSUN(Position, ModelViewMat) == false) {
        //UNIQUEの描画を呼び出す(include/position.glsl参照)
        #define UNIQUE
        #moj_import <position.glsl>
        ////カメラと頂点の距離？霧の描画に影響します
        vertexDistance = length((ModelViewMat * vec4(rotateX(rtx / -57.0) * rotateY((rty - 180.0) / -57.0) * rotateZ(rtz / -90.0) * inverse(IViewRotMat) * viewpos * inverse(IViewRotMat), 1.0)).xyz);

        //もし太陽の場合
    } else if(isSUN(Position, ModelViewMat) == true) {
        //空の描画関連なのでプレイヤーの回転のみ無効化します
        vec3 pos = Position * inverse(IViewRotMat);
        gl_Position = ProjMat * ModelViewMat * (vec4(rotateX(rtx / -57.0) * rotateY((rty - 180.0) / -57.0) * rotateZ(rtz / -90.0) * pos, 1.0));
        vertexDistance = length((ModelViewMat * vec4(rotateX(rtx / -57.0) * rotateY((rty - 180.0) / -57.0) * rotateZ(rtz / -90.0) * pos, 1.0)).xyz);
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
