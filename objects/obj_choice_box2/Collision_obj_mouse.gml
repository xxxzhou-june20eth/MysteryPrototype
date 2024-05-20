if (mouse_check_button_pressed(1)){
	if (instance_exists(obj_drawer_right1)){
		if (obj_drawer_right1.choosing){
		obj_drawer_right1.chosed=1;
		obj_drawer_right1.line_number=3;
		obj_drawer_right1.choosing=false;
		obj_mouse.choosing=false;
		obj_text_box_interactables.text=obj_drawer_right1.text_line[3].choices[1].lines[0].text;
		}
		else if (obj_diary.choosing){
			obj_diary.chosed=1;
			obj_diary.choosing=false;
			obj_mouse.choosing=false;
			obj_text_box_interactables.visible=false;
			obj_diary.text_line=obj_chat_bedroom.bedroom.interactables.obj_diary.lines;
			obj_diary.line_number=0;
			obj_diary.chosed=-1;
		}
		else if (obj_door.choosing){
			room_goto_next();
		}
	}
	visible=false;
	text="";
	obj_choice_box1.visible=false;
	obj_choice_box1.text="";
}