if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	if (!choosing){
		if (struct_exists(text_line[line_number],"choices")){
			choosing=true;
			obj_text_box_interactables.visible=true;
			obj_text_box_interactables.text=text_line[0].speaker;
			obj_text_box_interactables.text2=text_line[0].text;
			obj_mouse.choosing=true;
			if (global.diary_read || global.left2 || global.left3){
				obj_choice_box1.text=text_line[line_number].choices[0].text;
				obj_choice_box1.visible=true;
			}
			else{
				choosing=false;
				obj_mouse.choosing=false;
			}
			if (global.diary_read || global.right1){
				obj_choice_box2.text=text_line[line_number].choices[1].text;
				obj_choice_box2.visible=true;
			}
		}
	}
}