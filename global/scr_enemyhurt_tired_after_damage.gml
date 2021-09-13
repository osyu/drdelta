scr_enemyhurt_tired_after_damage = function(argument0)
{
    if (global.monsterhp[myself] <= (global.monstermaxhp[myself] * argument0))
        scr_monster_make_tired(myself)
    return;
}
