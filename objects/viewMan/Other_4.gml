/// Configure View
if (room==measure)
{
 if (os_type==os_windows || os_type==os_macosx)
 {
  w = windows_width
	 h = windows_height
 }
	else
	{
	 w = display_get_width();
  h= display_get_height();
	}

 show_debug_message(w)
	show_debug_message(h)

 if (abs(h/w-0.75)>abs(h/w-0.5625))
 {
  yp = 0
		show_debug_message("16:9")
 }
 else
 {
  yp = 320
		show_debug_message("4:3")
 }

 room_goto_next()
}
else
{
 var c = view_camera[0];
	
	//show_debug_message(w)
	//show_debug_message(h)
	
 if (yp==0)
	{
	 camera_set_view_pos(c, 0, 120)
		camera_set_view_size(c, 1280, 720)
	}
	else
	{	
		camera_set_view_pos(c, 0, 0)
		camera_set_view_size(c, 1280, 960)
	}
	view_xport[0] = 0
	view_yport[0] = 0
	view_wport[0] = w
	view_hport[0] = h
	
	window_set_size(w, h)
}