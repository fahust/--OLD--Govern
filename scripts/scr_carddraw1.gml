#define scr_carddraw1
 //VERSION NORMAL WINDOWS
 
 if obj_controller.cardnumbernow = cardnumber {}else{
xtotal = (room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = (room_height/2)+lengthdir_y(distlast,dirlast)
}
 
 xlogo1 = ((room_width/6)*2)-obj_controller.debugx+50
ylogo1 = (room_height/obj_controller.scalediv)-15
xlogo2 = ((room_width/6)*2.5)-obj_controller.debugx+50
ylogo2 = (room_height/obj_controller.scalediv)-15
xlogo3 = ((room_width/6)*3)-obj_controller.debugx+50
ylogo3 = (room_height/obj_controller.scalediv)-15
xlogo4 = ((room_width/6)*3.5)-obj_controller.debugx+50
ylogo4 = (room_height/obj_controller.scalediv)-15
xlogo5 = ((room_width/6)*4)-obj_controller.debugx+50
ylogo5 = (room_height/obj_controller.scalediv)-15


with(obj_card){if cardnumber = other.cardnumber {
if id = other.id{}else{instance_destroy();}
}}

colorcard = color5
if create = 1 {
if obj_controller.cardnumbernow = cardnumber {//if obj_controller.mort > 0 {show_message("f");}
if movetoleft = 0 && movetoright = 0 {
//CHANGER LA POSITION DE LA CARD EN CLIQUANT
xx = room_width/2;
yy = room_height/2;



//SUIVRE LE CURSEUR
if device_mouse_check_button(0, mb_left) {
xx = device_mouse_x(0);
yy = device_mouse_y(0);
dirlast = point_direction(room_width/2,room_height/2,xx,yy)
}







//FERMER OUVRIR LE SON

if instance_exists(obj_card){/*point_distance(obj_controller.xsound,obj_controller.ysound,xx,yy) < 100 {
if device_mouse_check_button_pressed(0, mb_left) {
if obj_controller.audioon = 1 {obj_controller.audioon = 0}else{obj_controller.audioon = 1}}}else{*/

lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)


lerpdist = point_distance(xx,yy,room_width/2,room_height/2)
distlast = lerp(distlast,lerpdist,0.4)
if distlast > 300 {distlast = 300}

xtotal = (room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = (room_height/2)+lengthdir_y(distlast,dirlast)
}
if ytotal > (room_height/2)+100 {ytotal = (room_height/2)+100}
if ytotal < (room_height/2)-100 {ytotal = (room_height/2)-100}

}else{
lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)
xtotal = lerpxx//(room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = lerpyy//(room_height/2)+lengthdir_y(distlast,dirlast)
image_alpha -= 0.1
if image_alpha < 0 {
instance_destroy();
obj_controller.cardnumbernow += 1

}
}



//LACHER LE BOUTON pour changer de carte
if device_mouse_check_button_released(0, mb_left) {
if obj_controller.alarm[1] < 0 {
if lerpxx < (room_width/2)-60 {movetoleft = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,1);
audio_play_sound(snd_button2,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
if lerpxx > (room_width/2)+60 {movetoright = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,2);
audio_play_sound(snd_button3,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
}
}
}else{
xtotal = room_width/2
ytotal = room_height/2
}


anglerot = point_direction(room_width/2,room_height,room_width/2+((xtotal-room_width/2)/4),room_height/2)
}else{
//animation de creation
anglerot = 90
colorcard = color7
if obj_controller.cardnumbernow = cardnumber {
depth = 0+cardnumber
colorcard = color6
alarmstep += 9
if obj_controller.alarm[1] < 0 {
if alarm[0] < 0 {alarm[0] = 20;obj_controller.alarm[1] = 22}}
/*if alarm[0] > 10 {xtotal += 60}
if alarm[0] > 0 && alarm[0] < 10 {xtotal -= 60}*/}




}//}


if obj_controller.cardnumbernow < cardnumber-1 {}else{//desactiver les draw
depth = 0+cardnumber

//name du ministre
if obj_controller.mort = 0 {
vartype = ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)
name = "personne"
if global.language = 1 {
if vartype = 1 {name = "Premier ministre"}
if vartype = 2 {name = "Ministre des finances"}
if vartype = 3 {name = "Ministre des affaires étrangères"}
if vartype = 4 {name = "Ministre de la santé"}
if vartype = 5 {name = "Ministre de l'écologie"}
if vartype = 6 {name = "Ministre de l'intérieur"}
if vartype = 7 {name = "Ministre de l'éducation"}
if vartype = 8 {name = "Ministre de l'agriculture"}
if vartype = 9 {name = "Ministre des transport"}
if vartype = 10 {name = "Ministre du travail"}
if vartype = 11 {name = "Votre famille"}
if vartype = 12 {name = "?"}
}else{
if vartype = 1 {name = "Prime Minister"}
if vartype = 2 {name = "Minister of Finance"}
if vartype = 3 {name = "Minister for Foreign Affairs"}
if vartype = 4 {name = "Minister for Health"}
if vartype = 5 {name = "Minister for Ecology"}
if vartype = 6 {name = "Minister of the Interior"}
if vartype = 7 {name = "Minister of Education"}
if vartype = 8 {name = "Minister for Agriculture"}
if vartype = 9 {name = "Minister of Transport"}
if vartype = 10 {name = "Minister for Labour"}
if vartype = 11 {name = "Your family"}
if vartype = 12 {name = "?"}
}
draw_set_color(color5)
draw_text_outline(room_width/2,room_height-(room_height/5),name,color7,800,0,50)
}

if obj_controller.mort = 0 {
//if alarm[0] > 0 {
if create = 0 {
if alarm[0] > 10 {sprnowreturn1 = spr_cardfond;sprnowreturn2 = spr_cardfond;
sprnowreturn3 = spr_cardfond;colorfond = color3}else{sprnowreturn1 = spr_vest;
sprnowreturn2 = spr_head;sprnowreturn3 = spr_hair;colorfond = c_white}
d3d_transform_set_rotation_y(180-alarmstep);
d3d_transform_add_translation(xtotal,ytotal,10);
draw_sprite_ext(spr_card,0,0,0,1,1,anglerot-90,obj_controller.colorcard[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(sprnowreturn1,obj_controller.sprvest[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,colorfond,image_alpha)
if sprnowreturn1 = spr_vest {
draw_sprite_ext(sprnowreturn2,obj_controller.sprhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,obj_controller.colorhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(sprnowreturn3,obj_controller.sprhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,obj_controller.colorhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
}d3d_transform_set_identity();
}else{
//}
lerpxeye = lerp(lerpxeye,obj_controller.xeye[obj_controller.lerpeye],0.1)
lerpyeye = lerp(lerpyeye,obj_controller.yeye[obj_controller.lerpeye],0.1)
draw_sprite_ext(spr_card,0,xtotal,ytotal,1,1,anglerot-90,obj_controller.colorcard[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_vest,obj_controller.sprvest[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
draw_sprite_ext(spr_head,obj_controller.sprhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,obj_controller.colorhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_hair,obj_controller.sprhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,obj_controller.colorhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_eyes,obj_controller.cligndesyeu,xtotal+lerpxeye,ytotal+lerpyeye,1,1,anglerot-90,c_white,image_alpha)
//draw_sprite_ext(spr_card,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
}
}else{
draw_sprite_ext(spr_die,0,xtotal,ytotal,1,1,anglerot-90,colorcard,image_alpha)
}
//aficher un dossier "confidentiel en fond"
if obj_controller.cardnumbernow < cardnumber{
draw_sprite_ext(spr_cardfond,0,room_width/2,room_height/2,1,1,anglerot-90,color3,image_alpha)}

//afficher les choix
draw_set_color(color2);
if obj_controller.mort = 0 && obj_controller.cardnumbernow = cardnumber {
if device_mouse_check_button(0, mb_left) {
if lerpxx < (room_width/2)-60 {scr_pointstats(1);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)
draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,3,obj_controller.cardnumbernow)),color7,300,0,50)}
if lerpxx > (room_width/2)+60 {scr_pointstats(2);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)

draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,4,obj_controller.cardnumbernow)),color7,300,0,50)}
}
}

}



#define scr_carddraw2
//VERSION ANDROID LANDSCAPE

xlogo1 = ((room_width/6)*2)-obj_controller.debugx+50
ylogo1 = (room_height/obj_controller.scalediv)-15
xlogo2 = ((room_width/6)*2.5)-obj_controller.debugx+50
ylogo2 = (room_height/obj_controller.scalediv)-15
xlogo3 = ((room_width/6)*3)-obj_controller.debugx+50
ylogo3 = (room_height/obj_controller.scalediv)-15
xlogo4 = ((room_width/6)*3.5)-obj_controller.debugx+50
ylogo4 = (room_height/obj_controller.scalediv)-15
xlogo5 = ((room_width/6)*4)-obj_controller.debugx+50
ylogo5 = (room_height/obj_controller.scalediv)-15


with(obj_card){if cardnumber = other.cardnumber {
if id = other.id{}else{instance_destroy();}
}}

colorcard = color5
if create = 1 {
if obj_controller.cardnumbernow = cardnumber {
if movetoleft = 0 && movetoright = 0 {
//CHANGER LA POSITION DE LA CARD EN CLIQUANT
xx = room_width/2;
yy = room_height/2;



//SUIVRE LE CURSEUR
if device_mouse_check_button(0, mb_left) {
xx = device_mouse_x(0);
yy = device_mouse_y(0);
dirlast = point_direction(room_width/2,room_height/2,xx,yy)
}







//FERMER OUVRIR LE SON

if point_distance(obj_controller.xsound,obj_controller.ysound,xx,yy) < 100 {
if device_mouse_check_button_pressed(0, mb_left) {
if obj_controller.audioon = 1 {obj_controller.audioon = 0}else{obj_controller.audioon = 1}}}else{

lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)


lerpdist = point_distance(xx,yy,room_width/2,room_height/2)
distlast = lerp(distlast,lerpdist,0.4)
if distlast > 300 {distlast = 300}

xtotal = (room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = (room_height/2)+lengthdir_y(distlast,dirlast)
}
if ytotal > (room_height/2)+100 {ytotal = (room_height/2)+100}
if ytotal < (room_height/2)-100 {ytotal = (room_height/2)-100}

}else{
lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)
xtotal = lerpxx//(room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = lerpyy//(room_height/2)+lengthdir_y(distlast,dirlast)
image_alpha -= 0.1
if image_alpha < 0 {
instance_destroy();
obj_controller.cardnumbernow += 1

}
}



//LACHER LE BOUTON pour changer de carte
if device_mouse_check_button_released(0, mb_left) {
if obj_controller.alarm[1] < 0 {
if lerpxx < (room_width/2)-150 {movetoleft = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,1);
audio_play_sound(snd_button2,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
if lerpxx > (room_width/2)+150 {movetoright = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,2);
audio_play_sound(snd_button3,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
}
}
}else{
xtotal = room_width/2
ytotal = room_height/2
}


anglerot = point_direction(room_width/2,room_height,room_width/2+((xtotal-room_width/2)/4),room_height/2)
}else{
//animation de creation
anglerot = 90
colorcard = color7
if obj_controller.cardnumbernow = cardnumber {
colorcard = color6
if obj_controller.alarm[1] < 0 {
if alarm[0] < 0 {alarm[0] = 20;obj_controller.alarm[1] = 22}}
if alarm[0] > 10 {xtotal += 60}
if alarm[0] > 0 && alarm[0] < 10 {xtotal -= 60}}
}//}


if obj_controller.cardnumbernow < cardnumber-1 {}else{//desactiver les draw
depth = 0+cardnumber

if obj_controller.mort = 0 {
draw_sprite_ext(spr_card,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
}else{
draw_sprite_ext(spr_die,0,xtotal,ytotal,1,1,anglerot-90,colorcard,image_alpha)
}
//aficher un dossier "confidentiel en fond"
if alarm[0] > 10 or obj_controller.cardnumbernow < cardnumber{
draw_sprite_ext(spr_cardfond,0,room_width/2,room_height/2,1,1,anglerot-90,color3,image_alpha)}

//afficher les choix
draw_set_color(color2);
if obj_controller.mort = 0 {
if device_mouse_check_button(0, mb_left) {
if lerpxx < (room_width/2)-150 {scr_pointstats(1);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)
draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,3,obj_controller.cardnumbernow)),color7,300,0,50)}
if lerpxx > (room_width/2)+150 {scr_pointstats(2);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)

draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,4,obj_controller.cardnumbernow)),color7,300,0,50)}
}
}
if obj_controller.mort = 0 {
vartype = ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)
name = "personne"
if vartype = 1 {name = "Premier ministre"}
if vartype = 2 {name = "Ministre des finances"}
if vartype = 3 {name = "Ministre des affaires étrangères"}
if vartype = 4 {name = "Ministre de la santé"}
if vartype = 5 {name = "Ministre de l'écologie"}
if vartype = 6 {name = "Ministre de l'intérieur"}
if vartype = 7 {name = "Ministre de l'éducation"}
if vartype = 8 {name = "Ministre de l'agriculture"}
if vartype = 9 {name = "Ministre des transport"}
if vartype = 10 {name = "Ministre du travail"}
if vartype = 11 {name = "Votre famille"}
if vartype = 12 {name = "?"}
draw_text_outline(room_width/2,room_height-(room_height/5),name,color7,800,0,50)
}
}



#define scr_carddraw3
//VERSION ANDROID PORTRAIT

xlogo1 = ((room_width/12)*1.5)-obj_controller.debugx+45
ylogo1 = (room_height/obj_controller.scalediv)-15
xlogo2 = ((room_width/12)*4)-obj_controller.debugx+45
ylogo2 = (room_height/obj_controller.scalediv)-15
xlogo3 = ((room_width/12)*6)-obj_controller.debugx+45
ylogo3 = (room_height/obj_controller.scalediv)-15
xlogo4 = ((room_width/12)*8)-obj_controller.debugx+45
ylogo4 = (room_height/obj_controller.scalediv)-15
xlogo5 = ((room_width/12)*10.5)-obj_controller.debugx+45
ylogo5 = (room_height/obj_controller.scalediv)-15

xxroomheight = room_height/2+(room_height/10)

if obj_controller.cardnumbernow = cardnumber {}else{
ytotal = room_height/2+(room_height/10)}


with(obj_card){if cardnumber = other.cardnumber {
if id = other.id{}else{instance_destroy();}
}}

colorcard = color5
if create = 1 {
if obj_controller.cardnumbernow = cardnumber {
if movetoleft = 0 && movetoright = 0 {
//CHANGER LA POSITION DE LA CARD EN CLIQUANT


xx = room_width/2;
yy = xxroomheight;



//SUIVRE LE CURSEUR
if device_mouse_check_button(0, mb_left) {
xx = device_mouse_x(0);
yy = device_mouse_y(0);
dirlast = point_direction(room_width/2,xxroomheight,xx,yy)
}







//FERMER OUVRIR LE SON

if instance_exists(obj_card){/*if point_distance(obj_controller.xsound,obj_controller.ysound,xx,yy) < 100 {
if device_mouse_check_button_pressed(0, mb_left) {
if obj_controller.audioon = 1 {obj_controller.audioon = 0}else{obj_controller.audioon = 1}}}else{*/

lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)


lerpdist = point_distance(xx,yy,room_width/2,xxroomheight)
distlast = lerp(distlast,lerpdist,0.4)
if distlast > 120 {distlast = 120}

xtotal = (room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = xxroomheight+lengthdir_y(distlast,dirlast)
}
if ytotal > xxroomheight+100 {ytotal = xxroomheight+100}
if ytotal < xxroomheight-100 {ytotal = xxroomheight-100}

}else{
lerpxx = lerp(lerpxx,xx,0.1)
lerpyy = lerp(lerpyy,yy,0.1)
xtotal = lerpxx//(room_width/2)+lengthdir_x(distlast,dirlast)
ytotal = lerpyy//(room_height/2)+lengthdir_y(distlast,dirlast)
image_alpha -= 0.1
if image_alpha < 0 {
instance_destroy();
obj_controller.cardnumbernow += 1

}
}



//LACHER LE BOUTON pour changer de carte
if device_mouse_check_button_released(0, mb_left) {
if obj_controller.alarm[1] < 0 {
if lerpxx < (room_width/2)-40 {movetoleft = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,1);
audio_play_sound(snd_button2,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
if lerpxx > (room_width/2)+40 {movetoright = 1;
if obj_controller.cardnumbernow = cardnumber {scr_uino(cardnumber,2);
audio_play_sound(snd_button3,0,false);
if obj_controller.mort > 0 {scr_mort();}}
xx = device_mouse_x(0);yy = device_mouse_y(0);}
}
}
}else{
xtotal = room_width/2
ytotal = xxroomheight
}


anglerot = point_direction(room_width/2,room_height,room_width/2+((xtotal-room_width/2)/4),xxroomheight)
}else{
//animation de creation
anglerot = 90
colorcard = color7
if obj_controller.cardnumbernow = cardnumber {
colorcard = color6
alarmstep += 9
if obj_controller.alarm[1] < 0 {
if alarm[0] < 0 {alarm[0] = 20;obj_controller.alarm[1] = 22}}
/*if alarm[0] > 10 {xtotal += 60}
if alarm[0] > 0 && alarm[0] < 10 {xtotal -= 60}*/}
}//}


if obj_controller.cardnumbernow < cardnumber-1 {}else{//desactiver les draw
depth = 0+cardnumber

//NAME DU MINISTRE
if obj_controller.mort = 0 {
vartype = ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)
name = "personne"
if global.language = 1 {
if vartype = 1 {name = "Premier ministre"}
if vartype = 2 {name = "Ministre des finances"}
if vartype = 3 {name = "Ministre des affaires étrangères"}
if vartype = 4 {name = "Ministre de la santé"}
if vartype = 5 {name = "Ministre de l'écologie"}
if vartype = 6 {name = "Ministre de l'intérieur"}
if vartype = 7 {name = "Ministre de l'éducation"}
if vartype = 8 {name = "Ministre de l'agriculture"}
if vartype = 9 {name = "Ministre des transport"}
if vartype = 10 {name = "Ministre du travail"}
if vartype = 11 {name = "Votre famille"}
if vartype = 12 {name = "?"}
}else{
if vartype = 1 {name = "Prime Minister"}
if vartype = 2 {name = "Minister of Finance"}
if vartype = 3 {name = "Minister for Foreign Affairs"}
if vartype = 4 {name = "Minister for Health"}
if vartype = 5 {name = "Minister for Ecology"}
if vartype = 6 {name = "Minister of the Interior"}
if vartype = 7 {name = "Minister of Education"}
if vartype = 8 {name = "Minister for Agriculture"}
if vartype = 9 {name = "Minister of Transport"}
if vartype = 10 {name = "Minister for Labour"}
if vartype = 11 {name = "Your family"}
if vartype = 12 {name = "?"}
}
draw_set_color(color1)
draw_text_outline(room_width/2,room_height-(room_height/8),name,color6,600,0,50)
}

if obj_controller.mort = 0 {
if create = 0 {
if alarm[0] > 10 {sprnowreturn1 = spr_cardfond;sprnowreturn2 = spr_cardfond;
sprnowreturn3 = spr_cardfond;colorfond = color3}else{sprnowreturn1 = spr_vest;
sprnowreturn2 = spr_head;sprnowreturn3 = spr_hair;colorfond = c_white}
d3d_transform_set_rotation_y(180-alarmstep);
d3d_transform_add_translation(xtotal,ytotal,10);
draw_sprite_ext(spr_card,0,0,0,1,1,anglerot-90,obj_controller.colorcard[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(sprnowreturn1,obj_controller.sprvest[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,colorfond,image_alpha)

//draw_sprite_ext(sprnowreturn,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),0,0,1,1,anglerot-90,colorfond,image_alpha)
if sprnowreturn1 = spr_vest {
draw_sprite_ext(sprnowreturn2,obj_controller.sprhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,obj_controller.colorhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(sprnowreturn3,obj_controller.sprhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],0,0,1,1,anglerot-90,obj_controller.colorhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
}d3d_transform_set_identity();
}else{
lerpxeye = lerp(lerpxeye,obj_controller.xeye[obj_controller.lerpeye],0.1)
lerpyeye = lerp(lerpyeye,obj_controller.yeye[obj_controller.lerpeye],0.1)
draw_sprite_ext(spr_card,0,xtotal,ytotal,1,1,anglerot-90,obj_controller.colorcard[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_vest,obj_controller.sprvest[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
draw_sprite_ext(spr_head,obj_controller.sprhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,obj_controller.colorhead[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_hair,obj_controller.sprhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],xtotal,ytotal,1,1,anglerot-90,obj_controller.colorhair[ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow)],image_alpha)
draw_sprite_ext(spr_eyes,obj_controller.cligndesyeu,xtotal+lerpxeye,ytotal+lerpyeye,1,1,anglerot-90,c_white,image_alpha)
//draw_sprite_ext(spr_card,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)

//draw_sprite_ext(spr_card,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
}
//draw_sprite_ext(spr_card,ds_grid_get(obj_controller.grid,0,obj_controller.cardnumbernow),xtotal,ytotal,1,1,anglerot-90,c_white,image_alpha)
}else{
draw_sprite_ext(spr_die,0,xtotal,ytotal,1,1,anglerot-90,colorcard,image_alpha)
}
//aficher un dossier "confidentiel en fond"
if obj_controller.cardnumbernow < cardnumber{
draw_sprite_ext(spr_cardfond,0,room_width/2,xxroomheight,1,1,anglerot-90,color3,image_alpha)}

//afficher les choix
draw_set_color(color2);
if obj_controller.mort = 0 {
if device_mouse_check_button(0, mb_left) {
if lerpxx < (room_width/2)-40 {scr_pointstats(1);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)
draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,3,obj_controller.cardnumbernow)),color7,300,0,50)}
if lerpxx > (room_width/2)+40 {scr_pointstats(2);
draw_sprite_ext(spr_cardchoice,0,xtotal,ytotal,1,1,anglerot-90,c_black,0.6)

draw_text_outline(xtotal,ytotal-(room_height/6),""+string(ds_grid_get(obj_controller.grid,4,obj_controller.cardnumbernow)),color7,300,0,50)}
}
}

}