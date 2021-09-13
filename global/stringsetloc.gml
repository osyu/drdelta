stringsetloc = function(argument0, argument1)
{
    var str = argument0
    if (!is_english())
        str = scr_84_get_lang_string(argument1)
    return stringset(str);
}
