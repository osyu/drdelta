global.savedata_async_id = -1
global.savedata_async_load = 0
snd_play(snd_error)
is_active = true
global.savedata_pause = 1
font_face = (global.lang == "en" ? 3 : 10)
scale = 2
type = "default"
error_type = "save_failed"
text_save_data_corrupt = (global.lang == "en" ? "(Corrupt save data found.)" : "(セーブデータが#破損しています)")
text_temp_save_failed = (global.lang == "en" ? "(Failed to save#temporary data.)" : "(一時データを#セーブできませんでした)")
text_save_failed = (global.lang == "en" ? "(Save data#failed to write.)" : "(セーブデータを#書き込めませんでした)")
window_text = text_save_failed
auto_timer = 0
choice_index = 0
