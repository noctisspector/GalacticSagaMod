ParticleEmitter("Shockwave")
{
	MaxParticles(30.0000,30.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0110, 0.0110);
	BurstCount(24.0000,24.0000);
	MaxLodDist(2200.0000);
	MinLodDist(2000.0000);
	BoundingRadius(8.0);
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
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.5000, 2.5000);
		Red(0, 55.0000, 55.0000);
		Green(0, 59.0000, 59.0000);
		Blue(0, 240.0000, 240.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, 1.0000, 1.9000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.9000);
		Position()
		{
			LifeTime(0.6500)
		}
		Size(0)
		{
			LifeTime(0.2000)
			Scale(1.1000);
			Next()
			{
				LifeTime(0.7000)
				Scale(0.8000);
			}
		}
		Color(0)
		{
			LifeTime(0.4000)
			Move(0.0000,0.0000,0.0000,-15.0000);
			Next()
			{
				LifeTime(0.5000)
				Move(0.0000,0.0000,0.0000,-155.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("BILLBOARD");
		Texture("com_sfx_flashball1");
	}
}
