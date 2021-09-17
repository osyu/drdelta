scr_84_init_localization = function()
{
    var _locale = os_get_language()
    if (os_type == os_switch)
        var _lang = substr(switch_language_get_desired_language(), 1, 2)
    else
        _lang = (substr(_locale, 1, 2) != "ja" ? "en" : "ja")
    global.lang = _lang
    if ossafe_file_exists("true_config.ini")
    {
        ossafe_ini_open("true_config.ini")
        global.lang = ini_read_string("LANG", "LANG", _lang)
        ossafe_ini_close()
    }
    if (!variable_global_exists("lang_loaded"))
        global.lang_loaded = ""
    if (global.lang_loaded != global.lang)
    {
        global.lang_loaded = global.lang
        if variable_global_exists("lang_map")
        {
            ds_map_destroy(global.lang_map)
            ds_map_destroy(global.font_map)
            ds_map_destroy(global.chemg_sprite_map)
            ds_map_destroy(global.chemg_sound_map)
        }
        global.lang_map = ds_map_create()
        global.font_map = ds_map_create()
        global.lang_missing_map = ds_map_create()
        global.chemg_sprite_map = ds_map_create()
        global.chemg_sound_map = ds_map_create()
        scr_84_lang_load()
        scr_ascii_input_names()
        global.chemg_last_get_font = ""
        if (global.lang == "ja")
        {
            var fm = global.font_map
            ds_map_add(fm, "main", 10)
            ds_map_add(fm, "mainbig", 8)
            ds_map_add(fm, "tinynoelle", 12)
            ds_map_add(fm, "dotumche", 7)
            ds_map_add(fm, "comicsans", 6)
            ds_map_add(fm, "small", 9)
            var sm = global.chemg_sprite_map
            ds_map_add(sm, "spr_bnamekris", 2253)
            ds_map_add(sm, "spr_bnameralsei", 2254)
            ds_map_add(sm, "spr_bnamesusie", 2255)
            ds_map_add(sm, "spr_btact", 2256)
            ds_map_add(sm, "spr_btdefend", 2257)
            ds_map_add(sm, "spr_btfight", 2258)
            ds_map_add(sm, "spr_btitem", 2259)
            ds_map_add(sm, "spr_btspare", 2261)
            ds_map_add(sm, "spr_bttech", 2260)
            ds_map_add(sm, "spr_darkmenudesc", 2456)
            ds_map_add(sm, "spr_dmenu_captions", 2358)
            ds_map_add(sm, "spr_quitmessage", 3243)
            ds_map_add(sm, "spr_thrashbody_b", 2326)
            ds_map_add(sm, "spr_thrashfoot_b", 2324)
            ds_map_add(sm, "spr_fieldmuslogo", 2478)
            ds_map_add(sm, "spr_werewire_zzt_text", 3268)
            ds_map_add(sm, "spr_face_queen", 175)
            ds_map_add(sm, "spr_city_mice_sign_01", 247)
            ds_map_add(sm, "spr_city_mice_sign_02", 2813)
            ds_map_add(sm, "spr_city_mice_sign_03", 3175)
            ds_map_add(sm, "spr_bnamenoelle", 864)
            ds_map_add(sm, "spr_bnamethrash", 3306)
            ds_map_add(sm, "spr_cutscene_27_tender_goodbye", 2994)
            ds_map_add(sm, "spr_ch2_cityscreen", 3275)
            ds_map_add(sm, "spr_battlemsg", 3069)
            ds_map_add(sm, "spr_queenscreen", 2110)
            ds_map_add(sm, "spr_acrade_retire", 3152)
            ds_map_add(sm, "spr_sneo_playback", 3316)
            var sndm = global.chemg_sound_map
        }
        else
        {
            fm = global.font_map
            ds_map_add(fm, "main", 3)
            ds_map_add(fm, "mainbig", 2)
            ds_map_add(fm, "tinynoelle", 0)
            ds_map_add(fm, "dotumche", 1)
            ds_map_add(fm, "comicsans", 4)
            ds_map_add(fm, "small", 5)
            sm = global.chemg_sprite_map
            ds_map_add(sm, "spr_bnamekris", 2230)
            ds_map_add(sm, "spr_bnameralsei", 2231)
            ds_map_add(sm, "spr_bnamesusie", 2233)
            ds_map_add(sm, "spr_btact", 2235)
            ds_map_add(sm, "spr_btdefend", 2237)
            ds_map_add(sm, "spr_btfight", 2238)
            ds_map_add(sm, "spr_btitem", 2243)
            ds_map_add(sm, "spr_btspare", 2239)
            ds_map_add(sm, "spr_bttech", 2245)
            ds_map_add(sm, "spr_darkmenudesc", 2446)
            ds_map_add(sm, "spr_dmenu_captions", 2346)
            ds_map_add(sm, "spr_quitmessage", 2538)
            ds_map_add(sm, "spr_thrashbody_b", 2326)
            ds_map_add(sm, "spr_thrashfoot_b", 2324)
            ds_map_add(sm, "spr_fieldmuslogo", 2478)
            ds_map_add(sm, "spr_werewire_zzt_text", 1735)
            ds_map_add(sm, "spr_face_queen", 642)
            ds_map_add(sm, "spr_city_mice_sign_01", 3071)
            ds_map_add(sm, "spr_city_mice_sign_02", 3072)
            ds_map_add(sm, "spr_city_mice_sign_03", 3073)
            ds_map_add(sm, "spr_bnamenoelle", 2234)
            ds_map_add(sm, "spr_bnamethrash", 2232)
            ds_map_add(sm, "spr_cutscene_27_tender_goodbye", 373)
            ds_map_add(sm, "spr_ch2_cityscreen", 3056)
            ds_map_add(sm, "spr_battlemsg", 2522)
            ds_map_add(sm, "spr_queenscreen", 37)
            ds_map_add(sm, "spr_acrade_retire", 2187)
            ds_map_add(sm, "spr_sneo_playback", 3269)
            sndm = global.chemg_sound_map
        }
    }
    return;
}
