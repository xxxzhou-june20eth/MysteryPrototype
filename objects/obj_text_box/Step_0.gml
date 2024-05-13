if (obj_text_box_interactables.visible=true){
	instance_destroy(self);
}

timing++;
if (room=rm_bedroom && timing>=90){
	instance_destroy(self);
}