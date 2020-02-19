


obj_controller.cardnumbernow = 0;
obj_controller.mort = 0;
obj_controller.stat[1] = 50;
obj_controller.stat[2] = 50;
obj_controller.stat[3] = 50;
obj_controller.stat[4] = 50;
obj_controller.stat[5] = 50;


if obj_controller.nbrjour > 0 {
obj_controller.experience += (obj_controller.nbrjour/obj_controller.level)
obj_controller.nbrjour = 0}

with(obj_controller){
scr_actualizcard();
scr_savegame();}


with(instance_create(0,0,obj_card)){cardnumber = 0}
with(instance_create(0,0,obj_card)){cardnumber = 1}



