ParticleEmitter("JetExhaustBlur")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0400, 0.0400);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("")
	NoRegisterStep();
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-1.0000,-1.0000);
			PositionY(-0.3000,-0.3000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(-0.6000,-0.6000);
			PositionY(-0.3250,-0.3250);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(20.0000,20.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2000, 0.3000);
		Red(255.0000, 28.0000, 0.0000);
		Green(255.0000, 28.0000, 0.0000);
		Blue(255.0000, 28.0000, 0.0000);
		Alpha(64.0000, 64.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.1500);
		Position()
		{
			LifeTime(0.0500)
		}
		Size(0)
		{
			LifeTime(0.0100)
			Scale(1.5000);
			Next()
			{
				LifeTime(0.1000)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.1500)
			Reach(255.0000,255.0000,255.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.0500);
		BlurRes(0.0000);
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("JetExhaust")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0060, 0.0060);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		NoRegisterStep();
		Size(1.0000, 1.0000);
		Hue(255.0000, 255.0000);
		Saturation(255.0000, 255.0000);
		Value(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Spread()
			{
				PositionX(-1.0000,-1.0000);
				PositionY(-0.3000,-0.1000);
				PositionZ(0.1000,0.2000);
			}
			Offset()
			{
				PositionX(-0.3015,-0.3015);
				PositionY(-0.3250,-0.3250);
				PositionZ(0.1900,0.1900);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(8.0000,8.1000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.2500, 0.3000);
			Red(95.0000, 30.0000, 0.0000);
			Green(140.0000, 75.0000, 0.0000);
			Blue(222.0000, 145.0000, 0.0000);
			Alpha(220.0000, 55.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.0750);
			Position()
			{
				LifeTime(0.0750)
			}
			Size(0)
			{
				LifeTime(0.0100)
				Scale(1.1000);
				Next()
				{
					LifeTime(0.0650)
					Scale(0.0000);
				}
			}
			Color(0)
			{
				LifeTime(0.0700)
				Reach(200.0000,141.0000,32.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
		}
		ParticleEmitter("JetExhaust")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0060, 0.0060);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			BoundingRadius(5.0);
			SoundName("")
			NoRegisterStep();
			Size(1.0000, 1.0000);
			Hue(255.0000, 255.0000);
			Saturation(255.0000, 255.0000);
			Value(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Spread()
				{
					PositionX(-1.0000,-1.0000);
					PositionY(-0.3000,-0.1000);
					PositionZ(-0.2000,-0.1000);
				}
				Offset()
				{
					PositionX(-0.3015,-0.3015);
					PositionY(-0.3250,-0.3250);
					PositionZ(-0.1956,-0.1956);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(8.0000,8.1000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.2500, 0.3000);
				Red(95.0000, 30.0000, 0.0000);
				Green(140.0000, 75.0000, 0.0000);
				Blue(222.0000, 145.0000, 0.0000);
				Alpha(220.0000, 55.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.0750);
				Position()
				{
					LifeTime(0.0750)
				}
				Size(0)
				{
					LifeTime(0.0100)
					Scale(1.1000);
					Next()
					{
						LifeTime(0.0650)
						Scale(0.0000);
					}
				}
				Color(0)
				{
					LifeTime(0.0700)
					Reach(200.0000,141.0000,32.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flashball3");
			}
			ParticleEmitter("Smoke")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0070, 0.0070);
				BurstCount(1.0000,1.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
				SoundName("")
				NoRegisterStep();
				Size(1.0000, 1.0000);
				Hue(255.0000, 255.0000);
				Saturation(255.0000, 255.0000);
				Value(255.0000, 255.0000);
				Alpha(255.0000, 255.0000);
				Spawner()
				{
					Spread()
					{
						PositionX(-15.0000,-1.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.7000,-0.7000);
						PositionY(-0.2100,-0.2100);
						PositionZ(-0.2000,0.2000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.5000,0.6000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.7000, 0.8000);
					Red(200.0000, 75.0000, 0.0000);
					Green(200.0000, 75.0000, 0.0000);
					Blue(200.0000, 75.0000, 0.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, 9.0000, 9.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.5000);
					Position()
					{
						LifeTime(0.5000)
					}
					Size(0)
					{
						LifeTime(0.0100)
						Next()
						{
							LifeTime(0.0650)
							Scale(0.0000);
						}
					}
					Color(0)
					{
						LifeTime(0.0500)
						Reach(223.0000,223.0000,223.0000,15.0000);
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("PARTICLE");
					Texture("com_sfx_smoke3");
				}
			}
		}
	}
}


