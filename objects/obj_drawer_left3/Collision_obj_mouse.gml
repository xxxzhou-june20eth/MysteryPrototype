if (mouse_check_button_pressed(1)){
	if (line_number==0){
	obj_text_box_interactables.text=text_line[0].text;
	line_number+=1	
	}
	
	if (line_number==1){
		if (global.diary_read){
			interactable_draw_text(text_line[0].lines,0);
		}
		else{
			if (global.left3){
				interactable_draw_text(text_line[1].lines,0);
			}
			else{
				interactable_draw_text(text_line[1].lines,1);
			}
			
		}
	}
}
