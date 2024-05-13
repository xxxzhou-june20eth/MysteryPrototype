
if (line_number==array_length(text_line)){
	visible=false;
}

if (line_number==array_length(text_line)){
	instance_deactivate_layer("Instances");
}
else{
dtext();

if (line_number==2){
	instance_create_layer(0,0,"Instances",obj_onfloor_hand);
}

if (choosing){
	if (!chosedb){
		show_choose_box();
	}
	else{
		hide_choose_box();
		branch_line_number=0;
		choosing=false;
		chosedb=false;
	}
}
}