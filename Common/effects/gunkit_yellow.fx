		ParticleEmitter("Flare")
		{
			MaxParticles(1.0000,1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0000, 0.0000);
			BurstCount(1.0000,1.0000);
			MaxLodDist(0.0000);
			MinLodDist(0.0000);
			BoundingRadius(0.0);
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
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(-0.5000,-0.5000);
					PositionZ(1.0000,1.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 3.0000, 3.0000);
				Red(0, 224.0000, 224.0000);
				Green(0, 224.0000, 224.0000);
				Blue(0, 18.0000, 18.0000);
				Alpha(0, 250.0000, 250.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.0450);
				Position()
				{
					LifeTime(0.0400)
				}
				Size(0)
				{
					LifeTime(0.0500)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0450)
					Reach(224.0000,224.0000,18.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("flare5");
		}
			ParticleEmitter("Flash")
			{
				MaxParticles(1.0000,1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0000, 0.0000);
				BurstCount(1.0000,1.0000);
				MaxLodDist(0.0000);
				MinLodDist(0.0000);
				BoundingRadius(0.0);
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
					PositionY(-0.5000,-0.5000);
					PositionZ(0.9000,0.9000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 2.0000, 2.0000);
				Red(0, 224.0000, 224.0000);
				Green(0, 224.0000, 224.0000);
				Blue(0, 18.0000, 18.0000);
					Alpha(0, 250.0000, 250.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.0450);
					Position()
					{
						LifeTime(0.0400)
					}
					Size(0)
					{
						LifeTime(0.0500)
					Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.0450)
						Reach(224.0000,224.0000,18.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("lightflare");

			}

		}
	}
