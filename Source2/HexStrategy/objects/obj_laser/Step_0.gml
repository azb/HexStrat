if instance_exists(target)
{
	if (point_distance(x, y, target.x, target.y) < 10)
	{
		target.unit_health -= 10
		instance_destroy()
	}
}