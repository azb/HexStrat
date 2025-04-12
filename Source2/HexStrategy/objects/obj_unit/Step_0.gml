
//x = obj_cursor.tileWidth/2 + tileX * radiusX * 1.5
//y = obj_cursor.tileHeight/2 + tileY * (radiusY * 2)
if point_distance(x,y, targetX, targetY) > 6
{
    move_towards_point(targetX, targetY, 5)
}
else
{
    speed = 0
    x = targetX
    y = targetY
}

if (target != -1)
{
    if (attackStep < 3)
    {
        if (canShoot)
        {
	        canShoot = false
	        alarm[0] = 10
				
			if instance_exists(target)
			{
	            var newLaser = instance_create_layer(x, y, "Lasers", obj_laser)
	            newLaser.speed = 10
	            newLaser.direction = point_direction(x, y, target.x, target.y)
				newLaser.target = target;
			}
			attackStep++
        }
    }
    else
    {
        target = -1
        attackStep = 0
    }
}

if (unit_health <= 0)
{
	instance_destroy()
	instance_create_layer(x, y, "Lasers", obj_explosion)
}
