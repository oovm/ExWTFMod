PixelShader =
{
	Samplers =
	{	
		Diffuse =
		{
			Index = 0
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Wrap"
			AddressV = "Wrap"
		}	
		EnvironmentMap =
		{
			Index = 4
			MagFilter = "Linear"
			MinFilter = "Linear"
			MipFilter = "Linear"
			AddressU = "Clamp"
			AddressV = "Clamp"
			Type = "Cube"
		}
		LightIndexMap =
		{
			Index = 5
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "Point"
			AddressU = "Clamp"
			AddressV = "Clamp"
		}
		LightDataMap =
		{
			Index = 6
			MagFilter = "Point"
			MinFilter = "Point"
			MipFilter = "Point"
			AddressU = "Clamp"
			AddressV = "Clamp"
		}	
	}
}

VertexStruct VS_INPUT
{
    float3 	vPosition				: POSITION;
	float2 	vUV						: TEXCOORD0;
	float 	vAlpha					: TEXCOORD1;
};

VertexStruct VS_OUTPUT
{
    float4 	vPosition	: PDX_POSITION;
	float2 	vUV			: TEXCOORD0;
	float 	vAlpha		: TEXCOORD1;
};

ConstantBuffer( TrailConstants, 0, 0 )
{
	float4x4 	ViewProjectionMatrix;
	float4 		Color;
};


VertexShader =
{
	MainCode VertexShader
		ConstantBuffers = { TrailConstants }
	[[
		VS_OUTPUT main(const VS_INPUT v )
		{
			VS_OUTPUT Out;
					
			float4 vPosition = float4( v.vPosition.xyz, 1.0f );	
			Out.vPosition = mul( ViewProjectionMatrix, vPosition );
			
			Out.vUV = v.vUV;
			Out.vAlpha = v.vAlpha;
			return Out;
		}
		
	]]
}

PixelShader =
{
	MainCode PixelShaderShip
		ConstantBuffers = { TrailConstants }
	[[
		float4 main( VS_OUTPUT In ) : PDX_COLOR
		{
			float4 vColor = tex2D( Diffuse, In.vUV );
			vColor *= Color;

			//clip( vColor.a - 0.5f );
			
			return float4( vColor.rgb, max( 0.f, vColor.a * 3.0f * pow( In.vAlpha, 4 ) ) );
		}
	]]
	
	MainCode PixelShaderStrikeCraft
		ConstantBuffers = { TrailConstants }
	[[
		float4 main( VS_OUTPUT In ) : PDX_COLOR
		{
			float vAlpha = In.vAlpha;
			const float vAlphaBreakVal = 1.3f;	// ISB Graphics
			const float vPadding = 0.81f;	// ISB Graphics
			if( vAlpha > vAlphaBreakVal )
			{
				vAlpha = smoothstep( 1.0f - vPadding, vAlphaBreakVal, vAlpha );
			}
			else
			{
				vAlpha = smoothstep( vPadding, vAlphaBreakVal, vAlpha );
			}
			
			vAlpha *= smoothstep( 0.205f, 0.0f, abs( In.vUV.x - 0.5f ));
			vAlpha *= clamp(smoothstep(0.22f, 0.325f, vAlpha) * 100.0f, 1.0f, 50.0f); // ISB Graphics
			return float4( 0.0f, 0.4f, 1.0f, vAlpha * 0.25 );
		}
	]]
}

BlendState BlendState
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE"
}

RasterizerState RasterizerState
{
	FillMode = "FILL_SOLID"
	CullMode = "CULL_NONE"
	FrontCCW = no
}

DepthStencilState DepthStencilState
{
	DepthEnable = yes
	DepthWriteMask = "depth_write_zero"
}

Effect ShipTrail
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShaderShip"
}

Effect StrikeCraftTrail
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShaderStrikeCraft"
}