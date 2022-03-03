ParticleEmitter("Flash")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.0000, 2.0000);
		Red(0, 20.0000, 20.0000);
		Green(0, 209.0000, 209.0000);
		Blue(0, 153.0000, 153.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 255.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.1600);
		Position()
		{
			LifeTime(0.8000)
	}
		Size(0)
		{
			LifeTime(0.1600)
		}
		Color(0)
		{
			LifeTime(0.1600)
			Move(-200.0000,-20.0000,-200.0000,-255.0000);
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
		MaxParticles(5.0000,5.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(5.0000,5.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
		BoundingRadius(30.0);
		SoundName("")
		Size(1.0000, 1.0000);
		Hue(255.0000, 255.0000);
		Saturation(255.0000, 255.0000);
		Value(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Circle()
			{
				PositionX(-0.1500,0.2000);
				PositionY(0.3000,0.6000);
				PositionZ(-0.1500,0.2000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.3500,0.3500);
			VelocityScale(0.3000,1.3000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1500, 0.3000);
			Red(0, 92.0000, 92.0000);
			Green(0, 136.0000, 136.0000);
			Blue(0, 250.0000, 250.0000);
			Alpha(0, 0.0000, 0.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -90.0000, 90.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.2000);
			Position()
			{
				LifeTime(1.2000)
				Scale(0.0000);
			}
			Size(0)
			{
				LifeTime(1.2000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Move(92.0000,136.0000,250.0000,128.0000);
				Next()
				{
					LifeTime(1.0000)
					Move(-92.0000,-136.0000,-250.0000,-128.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_smoke4");
		}
		ParticleEmitter("Sparks")
		{
			MaxParticles(2.0000,2.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(2.0000,2.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			BoundingRadius(5.0);
			SoundName("")
			Size(1.0000, 1.0000);
			Hue(255.0000, 255.0000);
			Saturation(255.0000, 255.0000);
			Value(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Spread()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.3000, 0.9000);
				Red(0, 255.0000, 255.0000);
				Green(0, 184.0000, 200.0000);
				Blue(0, 17.0000, 32.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.2000);
				Position()
				{
					LifeTime(0.5000)
				}
				Size(0)
				{
					LifeTime(0.2000)
				}
				Color(0)
				{
					LifeTime(0.0100)
					Reach(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(0.1900)
						Reach(255.0000,128.0000,0.0000,255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("ANIMATED");
				TimePerFrame(0.0150);
				FrameSize(64.0000);
				TotalFrames(16.0000);
				Looping(1);
				Texture("com_sfx_sparks_animated1");
			}
			ParticleEmitter("ASparks")
			{
				MaxParticles(3.0000,3.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0010, 0.0010);
				BurstCount(1.0000,1.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
				SoundName("")
				Size(1.0000, 1.0000);
				Hue(255.0000, 255.0000);
				Saturation(255.0000, 255.0000);
				Value(255.0000, 255.0000);
				Alpha(255.0000, 255.0000);
				Spawner()
				{
					Circle()
					{
						PositionX(-1.0000,1.0000);
						PositionY(-1.0000,1.0000);
						PositionZ(-1.0000,1.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.5000,0.5000);
					VelocityScale(2.0000,7.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0100, 0.0200);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -180.0000, 180.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2000);
					Position()
					{
						LifeTime(0.2000)
						Accelerate(0.0000, -5.0000, 0.0000);
					}
					Size(0)
					{
						LifeTime(2.0000)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.2000)
						Move(0.0000,0.0000,0.0000,0.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("SPARK");
					SparkLength(0.0250);
					Texture("com_sfx_laser_green");
				}
			}
		}
	}
}

