randomize()
application_surface_enable(1)

if (os_type==os_windows || os_type==os_macosx)
{
 #macro windows_width 1280
 #macro windows_height swizard(os_get_config()=="w_phone", 960, 720)
}

draw_set_font(font0)