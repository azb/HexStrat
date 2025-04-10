draw_sprite(sprite_index,0,x,y)

var distance = point_distance(x,y,obj_cursor.x,obj_cursor.y);

if (distance < 10)
{
if (select_button_pressed()
    && obj_cursor.selectedObject = -1 
    && obj_cursor.canSelect)
    {
        obj_cursor.selectedObject = id    
        obj_cursor.canSelect = false
        obj_cursor.alarm[0] = 10
    }
}

draw_text(x,y-32,string_hash_to_newline("team: "+string(team)))

draw_set_color(c_red)
draw_rectangle(x-22, y-42, x+22, y-35+2, 0)
draw_set_color(c_lime)
draw_rectangle(x-20, y-40, x-20 + unit_health / 100 * 40, y-35, 0)
