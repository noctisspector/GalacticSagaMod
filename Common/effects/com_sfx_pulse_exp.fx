ParticleEmitter("Flash")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(5.0000,5.0000);
	MaxLodDist(1000.0000);
	MinLodDist(100.0000);
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
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0.5000, 0.5000, 0.5000);
		Red(0, 189.0000, 189.0000);
		Green(0, 7.0000, 7.0000);
		Blue(0, 240.0000, 240.0000);
		Alpha(0, 175.0000, 175.0000);
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
			LifeTime(0.2000)
			Scale(0.8000);
			Next()
			{
				LifeTime(0.7000)
				Scale(0.5000);
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
		Type("Particle");
		Texture("com_sfx_flashball3");
	}
}
