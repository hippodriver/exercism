package space_age

Planet :: enum {
	Mercury,
	Venus,
	Earth,
	Mars,
	Jupiter,
	Saturn,
	Uranus,
	Neptune,
}

age :: proc(planet: Planet, seconds: int) -> f64 {
	earth_years : f64 = f64(seconds) / 31557600.0
	switch planet {
	case Planet.Earth:
		return earth_years
	case Planet.Mercury:
		return earth_years / 0.2408467
	case Planet.Venus:
		return earth_years / 0.61519726
	case Planet.Mars:
		return earth_years / 1.8808158
	case Planet.Jupiter:
		return earth_years / 11.862615
	case Planet.Saturn:
		return earth_years / 29.447498
	case Planet.Uranus:
		return earth_years / 84.016846
	case Planet.Neptune:
		return earth_years / 164.79132
	}

	return 0.0
}
