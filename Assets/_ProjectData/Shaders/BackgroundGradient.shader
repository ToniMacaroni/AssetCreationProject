Shader "_SaberProj/Background" {
    Properties {
        _InnerColor ("InnerColor", Color) = (1, 1, 1, 1)
        _OuterColor ("OuterColor", Color) = (0, 0, 0, 1)
        _OffsetXY ("OffsetXY", Vector) = (0,0,1,1)
        _Glow ("Glow", Range(0, 1)) = 0.15
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
        }
        Pass {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 2.0
            float4 _InnerColor;
            float4 _OuterColor;
            float4 _OffsetXY;
            float _Glow;

            struct VertexInput {
                float4 vertex : POSITION;
            };

            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 screenPos : TEXCOORD0;
            };

            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }

            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;

                float3 emissive = lerp(_InnerColor.rgb,_OuterColor.rgb,distance(float2((_OffsetXY.r+(i.screenPos.r*_OffsetXY.b)),(_OffsetXY.g+(i.screenPos.g*_OffsetXY.a))),float2(0,0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,_Glow);
            }
            ENDCG
        }
    }
}
