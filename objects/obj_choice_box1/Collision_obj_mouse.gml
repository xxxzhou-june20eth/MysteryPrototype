if (mouse_check_button_pressed(1)){
	if (instance_exists(obj_drawer_right1)){
		if (obj_drawer_right1.choosing){
			obj_drawer_right1.chosed=0;
			obj_drawer_right1.next=true;
			obj_mouse.choosing=false;
			obj_text_box_interactables.text=obj_drawer_right1.text_line[3].choices[0].lines[0].text;
		}
		else if (obj_diary.choosing){
			obj_diary.chosed=0;
			obj_diary.choosing=false;
			obj_mouse.choosing=false;
			obj_diary.line_number=0;
			obj_diary.text_line=obj_diary.text_line[1].choices[0].lines;
			obj_text_box_interactables.text=obj_diary.text_line[0].text;
			global.diary_read=true;
		}
		else if (obj_lamp.choosing){
			obj_lamp.choosing=false;
			obj_mouse.choosing=false;
			obj_lamp.choosing+=1;
		}
	}
	if (instance_exists(obj_chat_onfloor)){
		room_goto_next();
	}
	visible=false;
	obj_choice_box2.visible=false;
	text="";
	obj_choice_box2.text="";
}