if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	obj_text_box_interactables.visible=true;
	interactable_draw_text(text_line,line_number);
	line_number+=1;
	if (line_number>1){
		line_number=1;
	}
}

