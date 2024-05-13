json_file=import_json("Who am I.json",json_parse);

text_line=json_file.rm_on_floor.lines;

line_number=0;

choosing=false;
choice=[];
chosedb=false;
chosed=-1;

branch_line=[];
branch_line_number=-1;

function dtext(){

if (branch_line_number==-1){
	if (struct_exists(text_line[line_number],"text")){
		obj_text_box.text=text_line[line_number].text;
		
		if (struct_exists(text_line[line_number],"lines")){
			branch_line_number=0;
		}
	}
	
	if (struct_exists(text_line[line_number],"choices") && !choosing){
		choosing=true;
		chosedb=false;
		choice=text_line[line_number].choices;
	}
	
}

if (struct_exists(text_line[line_number],"speaker")){
	obj_text_box.text=text_line[line_number].speaker+":\n"+text_line[line_number].text;
}
}


function show_choose_box(){
	obj_choice_box1.visible=true;
	obj_choice_box1.text=choice[0].text;
}

function hide_choose_box(){
	obj_choice_box1.visible=false;
	obj_choice_box1.text="";
}