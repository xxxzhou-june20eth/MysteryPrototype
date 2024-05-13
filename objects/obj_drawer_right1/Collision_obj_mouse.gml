if (mouse_check_button_pressed(1)){
	if (!next){
		if (!struct_exists(text_line[line_number],"choices")){
			interactable_draw_text(text_line,line_number);
			line_number+=1;
		}
		else{
			choosing=true;
		}
		
		if (choosing){
			if (global.diary_read || global.left2 || global.left3){
				obj_choice_box1.visible=true;
				obj_choice_box1.text=text_line[line_number].choices[0].text;
			}
			if (global.left2 || global.diary_read){
				obj_choice_box2.visible=true;
				obj_choice_box2.text=text_line[line_number].choices[1].text;
			}
		}
	}
	else{
		choosing=false;
		obj_choice_box1.visible=false;
		obj_choice_box2.visible=false;
		obj_choice_box1.text="";
		obj_choice_box2.text="";
		interactable_draw_text(text_line[line_number].choices[chosed].lines,0);
	}
}

