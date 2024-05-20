if (mouse_check_button_pressed(1) && obj_mouse.choosing==false){
	if (line_number==-1){
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[0].text;
		line_number+=1;
	}
	else if (line_number==0){
		if (global.diary_read){
			obj_text_box_interactables.visible=true;
			obj_text_box_interactables.text=text_line[1].text;
		}
		else{
			obj_text_box_interactables.visible=true;
			obj_text_box_interactables.text=text_line[2].text;
		}
	}
}