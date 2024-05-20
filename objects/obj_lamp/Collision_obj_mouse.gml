if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	obj_text_box_interactables.text2="";
	obj_text_box_interactables.text3="";
	if (line_number>3){
			line_number=3;
	}
	if (struct_exists(text_line[line_number],"choices")){
		obj_choice_box1.text=text_line[line_number].choices[0].text;
		obj_choice_box1.visible=true;
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[line_number-1].text;
		choosing=true;
		obj_mouse.choosing=true;
	}
	else{
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[line_number].text;
		line_number+=1;
		
	}
}