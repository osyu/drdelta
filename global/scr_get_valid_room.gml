scr_get_valid_room = function(argument0, argument1, argument2)
{
    if (argument2 == undefined)
        argument2 = 0
    var chapter = argument0
    var room_index = argument1
    var plot = argument2
    var current_room = @@NewGMLObject@@(gml_Script_scr_valid_room, room_index, plot)
    if (chapter == 1)
        var valid_rooms = [@@NewGMLObject@@(gml_Script_scr_valid_room, 283, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 316, 11), @@NewGMLObject@@(gml_Script_scr_valid_room, 321, 11), @@NewGMLObject@@(gml_Script_scr_valid_room, 326, 16), @@NewGMLObject@@(gml_Script_scr_valid_room, 330, 33), @@NewGMLObject@@(gml_Script_scr_valid_room, 340, 42), @@NewGMLObject@@(gml_Script_scr_valid_room, 349, 55), @@NewGMLObject@@(gml_Script_scr_valid_room, 352, 55), @@NewGMLObject@@(gml_Script_scr_valid_room, 354, 60), @@NewGMLObject@@(gml_Script_scr_valid_room, 363, 75), @@NewGMLObject@@(gml_Script_scr_valid_room, 371, 75), @@NewGMLObject@@(gml_Script_scr_valid_room, 377, 120), @@NewGMLObject@@(gml_Script_scr_valid_room, 378, 130), @@NewGMLObject@@(gml_Script_scr_valid_room, 388, 156), @@NewGMLObject@@(gml_Script_scr_valid_room, 395, 165), @@NewGMLObject@@(gml_Script_scr_valid_room, 404, 165), @@NewGMLObject@@(gml_Script_scr_valid_room, 407, 175), @@NewGMLObject@@(gml_Script_scr_valid_room, 392, 156), @@NewGMLObject@@(gml_Script_scr_valid_room, 337, 0)]
    if (chapter == 2)
        valid_rooms = [@@NewGMLObject@@(gml_Script_scr_valid_room, 28, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 71, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 72, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 85, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 88, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 93, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 99, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 122, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 125, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 136, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 131, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 138, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 143, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 162, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 167, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 197, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 203, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 181, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 206, 0), @@NewGMLObject@@(gml_Script_scr_valid_room, 4, 0)]
    var is_valid = 0
    var i = 0
    while (i < array_length_1d(valid_rooms))
    {
        if (current_room.room_index == valid_rooms[i].room_index)
        {
            is_valid = 1
            show_debug_message(("1 found matching room: " + string(room_get_name(current_room.room_index))))
            break
        }
        else
        {
            i++
            continue
        }
    }
    if (!is_valid)
    {
        current_room.room_index++
        i = 0
        while (i < array_length_1d(valid_rooms))
        {
            if (current_room.room_index == valid_rooms[i].room_index)
            {
                is_valid = 1
                show_debug_message(("2 found matching adjusted room: " + string(room_get_name(current_room.room_index))))
                break
            }
            else
            {
                i++
                continue
            }
        }
    }
    if (!is_valid)
    {
        current_room.room_index--
        show_debug_message(("trying to load invalid room: " + string(room_get_name(current_room.room_index))))
    }
    return current_room.room_index;
}

scr_valid_room = method(@@NullObject@@(), gml_Script_scr_valid_room)
scr_add_valid_room = method(@@NullObject@@(), gml_Script_scr_add_valid_room)