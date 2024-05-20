if (mouse_check_button_pressed(1) && !obj_mouse.choosing){
	obj_text_box_interactables.text2="";
	obj_text_box_interactables.text3="";
	if (struct_exists(text_line[line_number],"choices") && !next){
		choosing=true;
		obj_mouse.choosing=true;
		obj_text_box_interactables.text=text_line[2].text;
		obj_choice_box1.text=text_line[line_number].choices[0].text;
		obj_choice_box2.text=text_line[line_number].choices[1].text;
		obj_choice_box1.visible=true;
		obj_choice_box2.visible=true;
	}
	else{
		if (chosed==-1){
			obj_text_box_interactables.visible=true;
			obj_text_box_interactables.text=text_line[line_number].text;
			line_number+=1;
		}
		else{
			obj_text_box_interactables.visible=true;
			obj_text_box_interactables.text=text_line[line_number].choices[chosed].text;
			next=true;
		}
	}
}

