if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	obj_text_box_interactables.text2="";
	obj_text_box_interactables.text3="";
	if (line_number>6){
		line_number=0;
	}
	if (struct_exists(text_line[line_number],"choices")){
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[0].text;
		choosing=true;
		obj_choice_box1.text=text_line[line_number].choices[0].text;
		obj_choice_box1.visible=true;
		obj_choice_box2.text=text_line[line_number].choices[1].text;
		obj_choice_box2.visible=true;
		obj_mouse.choosing=true;
	}
	else{
		obj_text_box_interactables.visible=true;
		obj_text_box_interactables.text=text_line[line_number].text;
		if (struct_exists(text_line[line_number],"text2")){
			obj_text_box_interactables.text2=text_line[line_number].text2;
		}
		else{
			obj_text_box_interactables.text2="";
		}
		if (struct_exists(text_line[line_number],"text3")){
			obj_text_box_interactables.text3=text_line[line_number].text3;
		}
		else{
			obj_text_box_interactables.text3="";
		}
		if (line_number<=6){
			line_number+=1;
		}
	}
}
