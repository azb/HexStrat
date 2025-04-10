
draw_sprite(sprite_index,-1,x,y)

isFriend = false
isEnemy = false

if (selectedObject != -1)
{
    draw_sprite_ext(sprite_index,-1,selectedObject.x, selectedObject.y,.8, .8, 0, c_white, 1)

    for(i = 0 ; i < 6 ; i++)
    {
    if (point_distance(
        selectedObject.x, selectedObject.y, 
        obj_cursor.x, obj_cursor.y) > 8)
        {
        nearestUnit = instance_nearest(x, y, obj_unit)
        if (nearestUnit != selectedObject && 
            point_distance(nearestUnit.x, nearestUnit.y, x, y) < 8)
            {
            if (nearestUnit.team == selectedObject.team)
                {
                isFriend = true;
                }
            else
                {
                draw_sprite_ext(
                        spr_attack,
                        -1,
                        x,
                        y,
                        1,
                        1,
                        0,
                        c_white,
                        1
                    )
                isEnemy = true;
                }
            }
            
            draw_sprite_ext(
                    spr_arrow,
                    -1,
                    (x + selectedObject.x) / 2,
                    (y + selectedObject.y) / 2,
                    1,
                    1,
                    point_direction(
                        selectedObject.x, selectedObject.y, 
                        obj_cursor.x, obj_cursor.y),
                    c_white,
                    1
                )
            
        }
    }
    
    if (select_button_pressed())
        && canSelect
    {
        if (!isFriend && !isEnemy)
        {
            selectedObject.targetX = x
            selectedObject.targetY = y
        }
        else
        {
            if (isEnemy)
            {
                selectedObject.target = nearestUnit
            }
        }
        selectedObject = -1    
        canSelect = false
        alarm[0] = 10
    }
}

