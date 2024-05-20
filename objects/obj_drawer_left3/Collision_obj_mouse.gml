if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	obj_text_box_interactables.text2="";
	obj_text_box_interactables.text3="";
	if (!show){
	obj_text_box_interactables.visible=true;
	obj_text_box_interactables.text=text_line[0].text;
	show=true;
	global.left3=true;
	}
	else{
		if (global.diary_read){
			obj_text_box_interactables.visible=true;
			interactable_draw_text(text_line[0].lines,0);
		}
		else{
			if (global.left2){
				obj_text_box_interactables.visible=true;
				obj_text_box_interactables.text=text_line[1].lines[0].text;
			}
			else{
				obj_text_box_interactables.visible=true;
				obj_text_box_interactables.text=text_line[1].lines[1].text;
			}
		}
		show=false;
	}
	
}
