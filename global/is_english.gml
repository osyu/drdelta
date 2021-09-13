is_english = function()
{
    return ((!variable_global_exists("lang")) || global.lang == "en");
}
