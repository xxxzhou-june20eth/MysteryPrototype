x=mouse_x;
y=mouse_y;

if (mouse_check_button_pressed(1) && !place_meeting(x,y,obj_chatboxes) && !place_meeting(x,y,obj_interactables)){
	obj_text_box_interactables.text="";
	obj_text_box_interactables.visible=false;
}