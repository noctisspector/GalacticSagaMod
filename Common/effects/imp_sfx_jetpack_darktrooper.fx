ParticleEmitter("JetExhaustBlur")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
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
		Size(0, 0.7500, 0.8500);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.5000);
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
				LifeTime(0.4900)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.0500)
			Reach(255.0000,255.0000,255.0000,64.0000);
			Next()
			{
				LifeTime(0.4500)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("com_sfx_smoke3");
	}
	ParticleEmitter("JetExhaust_Left")
	{
		MaxParticles(-1.0000,-1.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0050, 0.0050);
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
			VelocityScale(10.0000,10.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1000, 0.1000);
			Red(0, 255.0000, 255.0000);
			Green(0, 200.0000, 200.0000);
			Blue(0, 100.0000, 100.0000);
			Alpha(0, 200.0000, 200.0000);
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
				Scale(1.5000);
				Next()
				{
					LifeTime(0.0650)
					Scale(0.0000);
				}
			}
			Color(0)
			{
				LifeTime(0.0750)
				Reach(0.0000,0.0000,0.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("com_sfx_flashball3");
		}
		ParticleEmitter("Ring_Left")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
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
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.3015,-0.3015);
					PositionY(-0.3250,-0.3250);
					PositionZ(0.1956,0.1956);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.3000, 0.3000);
				Red(0, 128.0000, 128.0000);
				Green(0, 128.0000, 128.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 4.0000, 4.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.5000)
					Scale(1.1000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Reach(128.0000,128.0000,255.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("com_sfx_flashring2");
			}
			ParticleEmitter("Flare_Left")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.1000);
				BurstCount(1.0000,1.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
				SoundName("")
				NoRegisterStep();
				Size(1.0000, 1.0000);
				Red(255.0000, 255.0000);
				Green(255.0000, 255.0000);
				Blue(255.0000, 255.0000);
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
						PositionX(-0.3015,-0.3015);
						PositionY(-0.3250,-0.3250);
						PositionZ(0.1956,0.1956);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.3000, 0.3000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 32.0000, 32.0000);
					StartRotation(0, 0.0000, 0.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.1000);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(1.0000)
					}
					Color(0)
					{
						LifeTime(0.1000)
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("com_sfx_flashball2");
				}
				ParticleEmitter("JetExhaust_Right")
				{
					MaxParticles(-1.0000,-1.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0050, 0.0050);
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
						VelocityScale(10.0000,10.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.1000, 0.1000);
						Red(0, 255.0000, 255.0000);
						Green(0, 200.0000, 200.0000);
						Blue(0, 100.0000, 100.0000);
						Alpha(0, 200.0000, 200.0000);
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
							Scale(1.5000);
							Next()
							{
								LifeTime(0.0650)
								Scale(0.0000);
							}
						}
						Color(0)
						{
							LifeTime(0.0750)
							Reach(0.0000,0.0000,0.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("com_sfx_flashball3");
					}
					ParticleEmitter("Ring_Right")
					{
						MaxParticles(-1.0000,-1.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.1000, 0.1000);
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
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							Offset()
							{
								PositionX(-0.3015,-0.3015);
								PositionY(-0.3250,-0.3250);
								PositionZ(-0.1956,-0.1956);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(0.0000,0.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.3000, 0.3000);
							Red(0, 128.0000, 128.0000);
							Green(0, 128.0000, 128.0000);
							Blue(0, 255.0000, 255.0000);
							Alpha(0, 4.0000, 4.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, 0.0000, 0.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.1000);
							Position()
							{
								LifeTime(1.0000)
							}
							Size(0)
							{
								LifeTime(0.5000)
								Scale(1.1000);
							}
							Color(0)
							{
								LifeTime(0.5000)
								Reach(128.0000,128.0000,255.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("com_sfx_flashring2");
						}
						ParticleEmitter("Flare_Right")
						{
							MaxParticles(-1.0000,-1.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.1000, 0.1000);
							BurstCount(1.0000,1.0000);
							MaxLodDist(50.0000);
							MinLodDist(10.0000);
							BoundingRadius(5.0);
							SoundName("")
							NoRegisterStep();
							Size(1.0000, 1.0000);
							Red(255.0000, 255.0000);
							Green(255.0000, 255.0000);
							Blue(255.0000, 255.0000);
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
									PositionX(-0.3015,-0.3015);
									PositionY(-0.3250,-0.3250);
									PositionZ(-0.1956,-0.1956);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(0.0000,0.0000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 0.3000, 0.3000);
								Red(0, 255.0000, 255.0000);
								Green(0, 255.0000, 255.0000);
								Blue(0, 255.0000, 255.0000);
								Alpha(0, 32.0000, 32.0000);
								StartRotation(0, 0.0000, 0.0000);
								RotationVelocity(0, 0.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(0.1000);
								Position()
								{
									LifeTime(1.0000)
								}
								Size(0)
								{
									LifeTime(1.0000)
								}
								Color(0)
								{
									LifeTime(0.1000)
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("com_sfx_flashball2");
							}
						}
					}
				}
			}
		}
	}
}
