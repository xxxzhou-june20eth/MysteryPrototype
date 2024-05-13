if (mouse_check_button_pressed(1)){
	if (instance_exists(obj_drawer_right1)){
	if (obj_drawer_right1.choosing){
	obj_drawer_right1.chosed=0;
	obj_drawer_right1.next=true;
	}
	}
	if (instance_exists(obj_chat_onfloor)){
		room_goto_next();
	}
}