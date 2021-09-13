scr_monster_make_tired = function(argument0)
{
    global.monstercomment[argument0] = stringsetloc("(Tired)", "scr_monster_make_tired_slash_scr_monster_make_tired_gml_1_0")
    global.monsterstatus[argument0] = true
    return;
}
