if (mouse_check_button_pressed(1)){
	if (!show){
		obj_text_box_interactables.text=text_line[0].text;
		show=true;
		global.left2=true;
	}
	else{
		if (global.diary_read){
			interactable_draw_text(text_line[0].lines,0);
		}
		else{
			if (global.left3){
				var lnb=0;
			}
			else{
				var lnb=1;
			}
			interactable_draw_text(text_line[1].lines,lnb);
			
		}
		show=false;
	}
}
