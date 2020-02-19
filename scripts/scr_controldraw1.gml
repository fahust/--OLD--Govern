#define scr_controldraw1
 //VERSION NORMAL WINDOWS
   
       if mort = 0 {
xxdie1 = (room_width/7)*2;
xxdie2 = room_width-((room_width/7)*2);
}else{
xxdie1 = 0
xxdie2 = room_width
}
xxvardie1 = lerp(xxvardie1,xxdie1,0.1)
xxvardie2 = lerp(xxvardie2,xxdie2,0.1)



draw_set_color(color7);
draw_sprite_ext(sprite3,0,0,0,1,1,0,c_white,1)
//draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(color6);
/*for (_t = 0;_t < sprite_get_width(sprite);_t +=1 ){
    draw_sprite_part_ext(sprite,0,_t,0,1,sprite_get_height(sprite),x+_t,y,1,1,c_white,_t/(sprite_get_width(sprite)))
}*/
if mort = 0 {yydie1 = room_height/8
}else{yydie1 = room_height/6.5}
if yyvardie1 < floor(yydie1) {yyvardie1 += 1}else
if yyvardie1 >floor(yydie1) {yyvardie1 -= 1}

var dist = point_distance(x, y, mouse_x, mouse_y) / 10;
var col = make_colour_hsv(clamp(dist, 0, 255), 255, 255);
//draw_roundrect_colour_ext(xxvardie1,0,xxvardie2,room_height, 0, 0, color6, color4, 0);
draw_rectangle(xxvardie1,0,xxvardie2,room_height,false);
draw_set_color(color1);
//draw_roundrect_colour_ext(xxvardie1,room_height/8,xxvardie2,room_height-(room_height/8), 0, 0, color1, color3, 0);
draw_rectangle(xxvardie1,yyvardie1,xxvardie2,room_height-(room_height/8),false);

if mort = 0 {}else{if iconsvaralpha = 0 {
if nbrjour > 0 && alarm[4] < 0{nbrjour -= 1;alarm[4] = 5;
audio_play_sound(snd_exp,1,false);
if level > 1 {experience += 5/level}else{if cardnumbernow > 1 {experience += 20}} }

//if varexp > experience {varexp -= 0.1}else if varexp < experience {varexp += 0.1}
varexp = lerp(varexp,experience,0.1)
draw_healthbar(xxvardie1,room_height/12,xxvardie2,room_height/14,varexp,color7,c_yellow,c_yellow,0,true,false)}
}



//draw_roundrect((room_width/6)*2,room_height/3,room_width-((room_width/6)*2),room_height-(room_height/5), false);

//draw_text((room_width/4)*2,300,"vue")

//draw_sprite_ext(spr_icons,0,(room_width/6)*2,(room_height/8),0.1,0.1,0,color7,1)
sprHealthBar = spr_icons
var spriteWidth = sprite_get_width(sprHealthBar);
var spriteHeight = sprite_get_height(sprHealthBar);
debugx = 20
scale = 0.2
scalediv = 40
if alarm[3] < 0 {
if mort = 0 {iconsalpha = 1}else{iconsalpha = 0}
if iconsvaralpha > iconsalpha {iconsvaralpha -= 0.1}else if 
iconsvaralpha < iconsalpha {iconsvaralpha += 0.1}}

coloricon1 = color1
coloricon2 = color1
coloricon3 = color1
coloricon4 = color1
coloricon5 = color1

if statvar[1] > stat[1] {statvar[1] -= 0.5 ;coloricon1 = c_red;}
if statvar[1] < stat[1] {statvar[1] += 0.5 ;coloricon1 = c_green;}
if statvar[2] > stat[2] {statvar[2] -= 0.5 ;coloricon2 = c_red;}
if statvar[2] < stat[2] {statvar[2] += 0.5 ;coloricon2 = c_green;}
if statvar[3] > stat[3] {statvar[3] -= 0.5 ;coloricon3 = c_red;}
if statvar[3] < stat[3] {statvar[3] += 0.5 ;coloricon3 = c_green;}
if statvar[4] > stat[4] {statvar[4] -= 0.5 ;coloricon4 = c_red;}
if statvar[4] < stat[4] {statvar[4] += 0.5 ;coloricon4 = c_green;}
if statvar[5] > stat[5] {statvar[5] -= 0.5 ;coloricon5 = c_red;}
if statvar[5] < stat[5] {statvar[5] += 0.5 ;coloricon5 = c_green;}

//if alarm[2] < 50 {coloricon1 = c_red;coloricon2 = c_red;coloricon3 = c_red;coloricon4 = c_red;coloricon5 = c_red;}

draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*2)-debugx,(room_height/scalediv),scale,scale,coloricon1,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[1]/100)), ((room_width/6)*2)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*2.5)-debugx,(room_height/scalediv),scale,scale,coloricon2,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[2]/100)), ((room_width/6)*2.5)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*3)-debugx,(room_height/scalediv),scale,scale,coloricon3,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[3]/100)), ((room_width/6)*3)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*3.5)-debugx,(room_height/scalediv),scale,scale,coloricon4,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[4]/100)), ((room_width/6)*3.5)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*4)-debugx,(room_height/scalediv),scale,scale,coloricon5,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[5]/100)), ((room_width/6)*4)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);
//if global.Left = true {
//draw_text(1300,300,"cardnumbernow = "+string(cardnumbernow))

draw_set_color(color5);
draw_set_halign(fa_center);
draw_set_font(fnt_arial);
draw_set_valign(fa_middle);
if obj_controller.mort = 0 {

draw_text_outline(room_width/2,room_height/4.7,""+string(ds_grid_get(grid,2,cardnumbernow)),color7,800,fa_middle,50)

}else{

if global.language = 1 {
if mort = 1 {draw_text_outline(room_width/2,room_height/4.7,""+string("Le peuple en colère est venu vous faire la peau, c'est fini pour vous."),color7,1100,0,50)}
if mort = 2 {draw_text_outline(room_width/2,room_height/4.7,""+string("Les ressources du pays ayant chuté, vous avez perdu le pouvoir."),color7,1100,0,50)}
if mort = 3 {draw_text_outline(room_width/2,room_height/4.7,""+string("Après avoir passé des semaines enfermé dans votre bunker, vous mourrez de faim."),color7,1100,0,50)}
if mort = 4 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vous avez était assassiner."),color7,1100,0,50)}
if mort = 5 {draw_text_outline(room_width/2,room_height/4.7,""+string("La police mécontente vous a abandonné, de peur, vous avez démissionné."),color7,1100,0,50)}
if mort = 6 {draw_text_outline(room_width/2,room_height/4.7,""+string("Le peuple a pris trop d'importance, c'est l'anarchie."),color7,1100,0,50)}
if mort = 7 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vos nombreuses ressources, on attiré des envieux, la guerre a ravagé votre pays."),color7,1100,0,50)}
if mort = 8 {draw_text_outline(room_width/2,room_height/4.7,""+string("Votre fortune vous a fait perdre la tête, vous vous enfuyez avec les richesses du pays."),color7,1100,0,50)}
if mort = 9 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vous avez gagné une place importante parmi les véritables puissances, vous abandonnez votre poste de président."),color7,1100,0,50)}
if mort = 10 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vous avez basculé dans un régime totalitaire, félicitations."),color7,1100,0,50)}
if mort = 11 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vous avez était éjecté pour inaction."),color7,1100,0,50)}
if mort = 12 {draw_text_outline(room_width/2,room_height/4.7,""+string("Après votre mandat, vous avez perdu l'estime de votre pays et n'avez pas été réélu."),color7,1100,0,50)}
if mort = 13 {draw_text_outline(room_width/2,room_height/4.7,""+string("Vous êtes a court de choix"),color7,1100,0,50)}
}else{
if mort = 1 {draw_text_outline(room_width/2,room_height/4.7,""+string("The angry people came to kill you, it's over for you."),color7,1100,0,50)}
if mort = 2 {draw_text_outline(room_width/2,room_height/4.7,""+string("As the country's resources have fallen, you have lost power."),color7,1100,0,50)}
if mort = 3 {draw_text_outline(room_width/2,room_height/4.7,""+string("After weeks locked in your bunker, you're starving."),color7,1100,0,50)}
if mort = 4 {draw_text_outline(room_width/2,room_height/4.7,""+string("You were murdered."),color7,1100,0,50)}
if mort = 5 {draw_text_outline(room_width/2,room_height/4.7,""+string("The disgruntled police abandoned you, out of fear, you resigned."),color7,1100,0,50)}
if mort = 6 {draw_text_outline(room_width/2,room_height/4.7,""+string("The people have become too important, it's anarchy."),color7,1100,0,50)}
if mort = 7 {draw_text_outline(room_width/2,room_height/4.7,""+string("Your many resources, attracted envious people, the war has ravaged your country."),color7,1100,0,50)}
if mort = 8 {draw_text_outline(room_width/2,room_height/4.7,""+string("Your fortune has made you lose your mind, you run away with the riches of the country."),color7,1100,0,50)}
if mort = 9 {draw_text_outline(room_width/2,room_height/4.7,""+string("You have gained an important place among the true powers, you are giving up your position as president."),color7,1100,0,50)}
if mort = 10 {draw_text_outline(room_width/2,room_height/4.7,""+string("You have switched to a totalitarian regime, congratulations."),color7,1100,0,50)}
if mort = 11 {draw_text_outline(room_width/2,room_height/4.7,""+string("You were ejected for inaction."),color7,1100,0,50)}
if mort = 12 {draw_text_outline(room_width/2,room_height/4.7,""+string("After your term, you lost the esteem of your country and were not re-elected."),color7,1100,0,50)}
if mort = 13 {draw_text_outline(room_width/2,room_height/4.7,""+string("You are short of choices"),color7,1100,0,50)}
}
}
draw_set_valign(fa_top);
if iconsvaralpha = 1 {
if global.language = 1 {
draw_text_outline(room_width/7,room_height/25,string(nbrjour)+""+string(" Jour au pouvoir"),color7,800,0,50)}else{
draw_text_outline(room_width/7,room_height/25,string(nbrjour)+""+string(" Day of reign"),color7,800,0,50)}
}else{if global.language = 1 {
draw_text_outline(room_width/2,room_height/10,string(nbrjour)+""+string(" Jour au pouvoir"),color7,800,0,50)}else{
draw_text_outline(room_width/2,room_height/10,string(nbrjour)+""+string(" Day of reign"),color7,800,0,50)}
}
//AFFICHER  LE SON
/*xsound = room_width/20
ysound = room_height-(room_height/15)
if obj_controller.audioon = 1 {audio_sound_gain(snd_ambiant,1,5);
draw_sprite_ext(spr_sound,0,xsound,ysound,1,1,0,color7,1)}else{
draw_sprite_ext(spr_sound,1,xsound,ysound,1,1,0,color7,1)
audio_sound_gain(snd_ambiant,0,5);}*/
//draw_text(room_width/2,room_height/5,""+string(ds_grid_get(grid,cardnumbernow,2)))

//device_mouse_x(i), device_mouse_y(i)
//draw_sprite_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 0.2, 0.2,0,color2, 1);

//draw_sprite_part_ext(spr_icons,0,_t,0,_t+1,sprite_get_height(spr_icons),x+_t,y,1,1,c_white,_t/(sprite_get_width(spr_icons)))
//draw_sprite_part_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 1, 1, x, y, 0.1, 0.1, color2, 1);


   //view_wview = 607.5
   //view_hview = 1080
   
   if mort = 0 {}else{if iconsvaralpha <= 0 {
   if animgift = 0 {
   xgiftlerp = room_width-(room_width/25);
   ygiftlerp = room_height/15;
   scalegiftlerp = 0.2;
   }else{
   xgiftlerp = (room_width/2);
   ygiftlerp = (room_height/2);
   scalegiftlerp = 1;
   }
   xgift = lerp(xgift,xgiftlerp,0.1)
   ygift = lerp(ygift,ygiftlerp,0.1)
   scalegift = lerp(scalegift,scalegiftlerp,0.1)
   
   if point_distance(xgift,ygift,(room_width/2),(room_height/2)) < 3 && animgift = 1 {
   animgift = 0
   scalegift = 1
   xgift = room_width-(room_width/25);
   ygift = room_height-(room_height/15);
   }
   
   draw_sprite_ext(spr_cardfond,0,xgift,ygift,scalegift,scalegift,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,room_width-(room_width/25),room_height/15,0.2,0.2,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,room_width/25+5,room_height/15-15,0.2,0.2,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/25)+10,(room_height/15)+5-15,0.2,0.2,0,color5,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/25)+15,(room_height/15)+10-15,0.2,0.2,0,color4,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/25)+20,(room_height/15)+15-15,0.2,0.2,0,color3,1)
   
   draw_text_outline(room_width/10,room_height/35,""+string(level+49),color6,800,0,50)
   //draw_text_outline(room_width/2,room_height/40,"lvl : "+string(level),color6,800,0,50)
}}

   
   

#define scr_controldraw2
//VERSION ANDROID LANDSCAPE
   
         if mort = 0 {
xxdie1 = (room_width/7)*2;
xxdie2 = room_width-((room_width/7)*2);
}else{
xxdie1 = 0
xxdie2 = room_width
}
xxvardie1 = lerp(xxvardie1,xxdie1,0.1)
xxvardie2 = lerp(xxvardie2,xxdie2,0.1)



draw_set_color(color7);
draw_sprite_ext(sprite3,0,0,0,1,1,0,c_white,1)
//draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(color6);
draw_rectangle(xxvardie1,0,xxvardie2,room_height,false);
draw_set_color(color1);
draw_rectangle(xxvardie1,room_height/8,xxvardie2,room_height-(room_height/8),false);




//draw_roundrect((room_width/6)*2,room_height/3,room_width-((room_width/6)*2),room_height-(room_height/5), false);

//draw_text((room_width/4)*2,300,"vue")

//draw_sprite_ext(spr_icons,0,(room_width/6)*2,(room_height/8),0.1,0.1,0,color7,1)
sprHealthBar = spr_icons
var spriteWidth = sprite_get_width(sprHealthBar);
var spriteHeight = sprite_get_height(sprHealthBar);
debugx = 20
scale = 0.2
scalediv = 40

coloricon1 = color1
coloricon2 = color1
coloricon3 = color1
coloricon4 = color1
coloricon5 = color1

if statvar[1] > stat[1] {statvar[1] -= 0.5 ;coloricon1 = c_red;}
if statvar[1] < stat[1] {statvar[1] += 0.5 ;coloricon1 = c_green;}
if statvar[2] > stat[2] {statvar[2] -= 0.5 ;coloricon2 = c_red;}
if statvar[2] < stat[2] {statvar[2] += 0.5 ;coloricon2 = c_green;}
if statvar[3] > stat[3] {statvar[3] -= 0.5 ;coloricon3 = c_red;}
if statvar[3] < stat[3] {statvar[3] += 0.5 ;coloricon3 = c_green;}
if statvar[4] > stat[4] {statvar[4] -= 0.5 ;coloricon4 = c_red;}
if statvar[4] < stat[4] {statvar[4] += 0.5 ;coloricon4 = c_green;}
if statvar[5] > stat[5] {statvar[5] -= 0.5 ;coloricon5 = c_red;}
if statvar[5] < stat[5] {statvar[5] += 0.5 ;coloricon5 = c_green;}

//if alarm[2] < 50 {coloricon1 = c_red;coloricon2 = c_red;coloricon3 = c_red;coloricon4 = c_red;coloricon5 = c_red;}

draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*2)-debugx,(room_height/scalediv),scale,scale,coloricon1,1);
draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[1]/100)), ((room_width/6)*2)-debugx,(room_height/scalediv),scale,scale,color7,1);

draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*2.5)-debugx,(room_height/scalediv),scale,scale,coloricon2,1);
draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[2]/100)), ((room_width/6)*2.5)-debugx,(room_height/scalediv),scale,scale,color7,1);

draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*3)-debugx,(room_height/scalediv),scale,scale,coloricon3,1);
draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[3]/100)), ((room_width/6)*3)-debugx,(room_height/scalediv),scale,scale,color7,1);

draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*3.5)-debugx,(room_height/scalediv),scale,scale,coloricon4,1);
draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[4]/100)), ((room_width/6)*3.5)-debugx,(room_height/scalediv),scale,scale,color7,1);

draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight, ((room_width/6)*4)-debugx,(room_height/scalediv),scale,scale,coloricon5,1);
draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[5]/100)), ((room_width/6)*4)-debugx,(room_height/scalediv),scale,scale,color7,1);
//if global.Left = true {
//draw_text(1300,300,"cardnumbernow = "+string(cardnumbernow))

draw_set_color(color5);
draw_set_halign(fa_middle);
draw_set_font(fnt_arial);

if obj_controller.mort = 0 {
draw_text_outline(room_width/2,room_height/7,""+string(ds_grid_get(grid,2,cardnumbernow)),color7,800,0,50)
}else{
if mort = 1 {draw_text_outline(room_width/2,room_height/7,""+string("Le peuple en colère est venu vous faire la peau, c'est fini pour vous."),color7,1100,0,50)}
if mort = 2 {draw_text_outline(room_width/2,room_height/7,""+string("Les ressources du pays ayant chuté, vous avez perdu le pouvoir."),color7,1100,0,50)}
if mort = 3 {draw_text_outline(room_width/2,room_height/7,""+string("Après avoir passé des semaines enfermé dans votre bunker, vous mourrez de faim."),color7,1100,0,50)}
if mort = 4 {draw_text_outline(room_width/2,room_height/7,""+string("Vous avez était assassiner."),color7,1100,0,50)}
if mort = 5 {draw_text_outline(room_width/2,room_height/7,""+string("La police mécontente vous a abandonné, de peur, vous avez démissionné."),color7,1100,0,50)}
if mort = 6 {draw_text_outline(room_width/2,room_height/7,""+string("Le peuple a pris trop d'importance, c'est l'anarchie."),color7,1100,0,50)}
if mort = 7 {draw_text_outline(room_width/2,room_height/7,""+string("Vos nombreuses ressources, on attiré des envieux, la guerre a ravagé votre pays."),color7,1100,0,50)}
if mort = 8 {draw_text_outline(room_width/2,room_height/7,""+string("Votre fortune vous a fait perdre la tête, vous vous enfuyez avec les richesses du pays."),color7,1100,0,50)}
if mort = 9 {draw_text_outline(room_width/2,room_height/7,""+string("Vous avez gagné une place importante parmi les véritables puissances, vous abandonnez votre poste de président."),color7,1100,0,50)}
if mort = 10 {draw_text_outline(room_width/2,room_height/7,""+string("Vous avez basculé dans un régime totalitaire, félicitations."),color7,1100,0,50)}
if mort = 11 {draw_text_outline(room_width/2,room_height/7,""+string("Vous avez était éjecté pour inaction."),color7,1100,0,50)}
if mort = 12 {draw_text_outline(room_width/2,room_height/7,""+string("Après votre mandat, vous avez perdu l'estime de votre pays et n'avez pas été réélu."),color7,1100,0,50)}
}

draw_text_outline(room_width/7,room_height/25,string(nbrjour)+""+string(" Jour au pouvoir"),color7,800,0,50)


//AFFICHER  LE SON
xsound = room_width/20
ysound = room_height-(room_height/15)
if obj_controller.audioon = 1 {audio_sound_gain(snd_ambiant,1,5);
draw_sprite_ext(spr_sound,0,xsound,ysound,1,1,0,color7,1)}else{
draw_sprite_ext(spr_sound,1,xsound,ysound,1,1,0,color7,1)
audio_sound_gain(snd_ambiant,0,5);}
//draw_text(room_width/2,room_height/5,""+string(ds_grid_get(grid,cardnumbernow,2)))

//device_mouse_x(i), device_mouse_y(i)
//draw_sprite_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 0.2, 0.2,0,color2, 1);

//draw_sprite_part_ext(spr_icons,0,_t,0,_t+1,sprite_get_height(spr_icons),x+_t,y,1,1,c_white,_t/(sprite_get_width(spr_icons)))
//draw_sprite_part_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 1, 1, x, y, 0.1, 0.1, color2, 1);


   //view_wview = 607.5
   //view_hview = 1080
   
   
   
   
   

#define scr_controldraw3
//VERSION ANDROID PORTRAIT

      if mort = 0 {
xxdie1 = 0;
xxdie2 = room_width
}else{
xxdie1 = 0
xxdie2 = room_width
}
xxvardie1 = lerp(xxvardie1,xxdie1,0.1)
xxvardie2 = lerp(xxvardie2,xxdie2,0.1)

if mort = 0 {yydie1 = room_height/8
}else{yydie1 = room_height/6.5}
if yyvardie1 < floor(yydie1) {yyvardie1 += 1}else
if yyvardie1 >floor(yydie1) {yyvardie1 -= 1}

draw_set_color(color7);
draw_sprite_ext(sprite3,0,0,0,1,1,0,c_white,1)
//draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(color6);
draw_rectangle(xxvardie1,0,xxvardie2,room_height,false);
draw_set_color(color1);
draw_rectangle(xxvardie1,yyvardie1,xxvardie2,room_height-(room_height/8),false);

if mort = 0 {}else{if iconsvaralpha = 0 {
if nbrjour > 0 && alarm[4] < 0{nbrjour -= 1;alarm[4] = 5;
audio_play_sound(snd_exp,1,false);
if level > 1 {experience += 5/level}else{if cardnumbernow > 1 {experience += 20}} }

//if varexp > experience {varexp -= 0.1}else if varexp < experience {varexp += 0.1}
varexp = lerp(varexp,experience,0.1)
draw_healthbar(xxvardie1,room_height/12,xxvardie2,room_height/14,varexp/1.1,color7,c_yellow,c_yellow,0,true,false)}
}

//draw_roundrect((room_width/6)*2,room_height/3,room_width-((room_width/6)*2),room_height-(room_height/5), false);

//draw_text((room_width/4)*2,300,"vue")

//draw_sprite_ext(spr_icons,0,(room_width/6)*2,(room_height/8),0.1,0.1,0,color7,1)
sprHealthBar = spr_icons
var spriteWidth = sprite_get_width(sprHealthBar);
var spriteHeight = sprite_get_height(sprHealthBar);
debugx = 50
scale = 0.18
scalediv = 40
if alarm[3] < 0 {
if mort = 0 {iconsalpha = 1}else{iconsalpha = 0}
if iconsvaralpha > iconsalpha {iconsvaralpha -= 0.1}else if 
iconsvaralpha < iconsalpha {iconsvaralpha += 0.1}}
coloricon1 = color1
coloricon2 = color1
coloricon3 = color1
coloricon4 = color1
coloricon5 = color1

if statvar[1] > stat[1] {statvar[1] -= 0.5 ;coloricon1 = c_red;}
if statvar[1] < stat[1] {statvar[1] += 0.5 ;coloricon1 = c_green;}
if statvar[2] > stat[2] {statvar[2] -= 0.5 ;coloricon2 = c_red;}
if statvar[2] < stat[2] {statvar[2] += 0.5 ;coloricon2 = c_green;}
if statvar[3] > stat[3] {statvar[3] -= 0.5 ;coloricon3 = c_red;}
if statvar[3] < stat[3] {statvar[3] += 0.5 ;coloricon3 = c_green;}
if statvar[4] > stat[4] {statvar[4] -= 0.5 ;coloricon4 = c_red;}
if statvar[4] < stat[4] {statvar[4] += 0.5 ;coloricon4 = c_green;}
if statvar[5] > stat[5] {statvar[5] -= 0.5 ;coloricon5 = c_red;}
if statvar[5] < stat[5] {statvar[5] += 0.5 ;coloricon5 = c_green;}

//if alarm[2] < 50 {coloricon1 = c_red;coloricon2 = c_red;coloricon3 = c_red;coloricon4 = c_red;coloricon5 = c_red;}

draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight, ((room_width/12)*1.5)-debugx,(room_height/scalediv),scale,scale,coloricon1,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 0, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[1]/100)), ((room_width/12)*1.5)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight, ((room_width/12)*4)-debugx,(room_height/scalediv),scale,scale,coloricon2,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[2]/100)), ((room_width/12)*4)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight, ((room_width/12)*6)-debugx,(room_height/scalediv),scale,scale,coloricon3,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[3]/100)), ((room_width/12)*6)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight, ((room_width/12)*8)-debugx,(room_height/scalediv),scale,scale,coloricon4,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 3, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[4]/100)), ((room_width/12)*8)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);

draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight, ((room_width/12)*10.5)-debugx,(room_height/scalediv),scale,scale,coloricon5,iconsvaralpha);
draw_sprite_part_ext(sprHealthBar, 4, 0, 0, spriteWidth, spriteHeight-(spriteHeight*(statvar[5]/100)), ((room_width/12)*10.5)-debugx,(room_height/scalediv),scale,scale,color7,iconsvaralpha);
//if global.Left = true {
//draw_text(1300,300,"cardnumbernow = "+string(cardnumbernow))

draw_set_color(color5);
draw_set_halign(fa_middle);
draw_set_font(fnt_arial);
draw_set_valign(fa_middle);
if obj_controller.mort = 0 {

draw_text_outline(room_width/2,room_height/4,""+string(ds_grid_get(grid,2,cardnumbernow)),color7,600,fa_middle,50)

}else{

if global.language = 1 {
if mort = 1 {draw_text_outline(room_width/2,room_height/4,""+string("Le peuple en colère est venu vous faire la peau, c'est fini pour vous."),color7,600,0,50)}
if mort = 2 {draw_text_outline(room_width/2,room_height/4,""+string("Les ressources du pays ayant chuté, vous avez perdu le pouvoir."),color7,600,0,50)}
if mort = 3 {draw_text_outline(room_width/2,room_height/4,""+string("Après avoir passé des semaines enfermé dans votre bunker, vous mourrez de faim."),color7,600,0,50)}
if mort = 4 {draw_text_outline(room_width/2,room_height/4,""+string("Vous avez était assassiner."),color7,600,0,50)}
if mort = 5 {draw_text_outline(room_width/2,room_height/4,""+string("La police mécontente vous a abandonné, de peur, vous avez démissionné."),color7,600,0,50)}
if mort = 6 {draw_text_outline(room_width/2,room_height/4,""+string("Le peuple a pris trop d'importance, c'est l'anarchie."),color7,600,0,50)}
if mort = 7 {draw_text_outline(room_width/2,room_height/4,""+string("Vos nombreuses ressources, on attiré des envieux, la guerre a ravagé votre pays."),color7,600,0,50)}
if mort = 8 {draw_text_outline(room_width/2,room_height/4,""+string("Votre fortune vous a fait perdre la tête, vous vous enfuyez avec les richesses du pays."),color7,600,0,50)}
if mort = 9 {draw_text_outline(room_width/2,room_height/4,""+string("Vous avez gagné une place importante parmi les véritables puissances, vous abandonnez votre poste de président."),color7,600,0,50)}
if mort = 10 {draw_text_outline(room_width/2,room_height/4,""+string("Vous avez basculé dans un régime totalitaire, félicitations."),color7,600,0,50)}
if mort = 11 {draw_text_outline(room_width/2,room_height/4,""+string("Vous avez était éjecté pour inaction."),color7,600,0,50)}
if mort = 12 {draw_text_outline(room_width/2,room_height/4,""+string("Après votre mandat, vous avez perdu l'estime de votre pays et n'avez pas été réélu."),color7,600,0,50)}
if mort = 13 {draw_text_outline(room_width/2,room_height/4,""+string("Vous êtes a court de choix"),color7,600,0,50)}
}else{
if mort = 1 {draw_text_outline(room_width/2,room_height/4,""+string("The angry people came to kill you, it's over for you."),color7,600,0,50)}
if mort = 2 {draw_text_outline(room_width/2,room_height/4,""+string("As the country's resources have fallen, you have lost power."),color7,600,0,50)}
if mort = 3 {draw_text_outline(room_width/2,room_height/4,""+string("After weeks locked in your bunker, you're starving."),color7,600,0,50)}
if mort = 4 {draw_text_outline(room_width/2,room_height/4,""+string("You were murdered."),color7,600,0,50)}
if mort = 5 {draw_text_outline(room_width/2,room_height/4,""+string("The disgruntled police abandoned you, out of fear, you resigned."),color7,600,0,50)}
if mort = 6 {draw_text_outline(room_width/2,room_height/4,""+string("The people have become too important, it's anarchy."),color7,600,0,50)}
if mort = 7 {draw_text_outline(room_width/2,room_height/4,""+string("Your many resources, attracted envious people, the war has ravaged your country."),color7,600,0,50)}
if mort = 8 {draw_text_outline(room_width/2,room_height/4,""+string("Your fortune has made you lose your mind, you run away with the riches of the country."),color7,600,0,50)}
if mort = 9 {draw_text_outline(room_width/2,room_height/4,""+string("You have gained an important place among the true powers, you are giving up your position as president."),color7,600,0,50)}
if mort = 10 {draw_text_outline(room_width/2,room_height/4,""+string("You have switched to a totalitarian regime, congratulations."),color7,600,0,50)}
if mort = 11 {draw_text_outline(room_width/2,room_height/4,""+string("You were ejected for inaction."),color7,600,0,50)}
if mort = 12 {draw_text_outline(room_width/2,room_height/4,""+string("After your term, you lost the esteem of your country and were not re-elected."),color7,600,0,50)}
if mort = 13 {draw_text_outline(room_width/2,room_height/4,""+string("You are short of choices"),color7,600,0,50)}
}

}
draw_set_valign(fa_top);
draw_set_color(color1);
if iconsvaralpha = 1 {
if global.language = 1 {
draw_text_outline(room_width/2,room_height-(room_height/20),string(nbrjour)+""+string(" Jour au pouvoir"),color6,800,0,50)}else{
draw_text_outline(room_width/2,room_height-(room_height/20),string(nbrjour)+""+string(" Day of reign"),color6,800,0,50)}
}else{
if global.language = 1 {
draw_text_outline(room_width/2,room_height-(room_height/20),string(nbrjour)+""+string(" Jour au pouvoir"),color6,800,0,50)}else{
draw_text_outline(room_width/2,room_height-(room_height/20),string(nbrjour)+""+string(" Day of reign"),color6,800,0,50)}
}

//AFFICHER  LE SON
/*xsound = room_width/20
ysound = room_height-(room_height/15)
if obj_controller.audioon = 1 {audio_sound_gain(snd_ambiant,1,5);
draw_sprite_ext(spr_sound,0,xsound,ysound,1,1,0,color7,1)}else{
draw_sprite_ext(spr_sound,1,xsound,ysound,1,1,0,color7,1)
audio_sound_gain(snd_ambiant,0,5);}*/
//draw_text(room_width/2,room_height/5,""+string(ds_grid_get(grid,cardnumbernow,2)))

//device_mouse_x(i), device_mouse_y(i)
//draw_sprite_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 0.2, 0.2,0,color2, 1);

//draw_sprite_part_ext(spr_icons,0,_t,0,_t+1,sprite_get_height(spr_icons),x+_t,y,1,1,c_white,_t/(sprite_get_width(spr_icons)))
//draw_sprite_part_ext(spr_icons, 0, (room_width/6)*2,(room_height/8), 1, 1, x, y, 0.1, 0.1, color2, 1);


   //view_wview = 607.5
   //view_hview = 1080
   
    if mort = 0 {}else{if iconsvaralpha <= 0 {
   if animgift = 0 {
   xgiftlerp = room_width-(room_width/10);
   ygiftlerp = room_height/15;
   scalegiftlerp = 0.2;
   }else{
   xgiftlerp = (room_width/2);
   ygiftlerp = room_height/2+(room_height/10);
   scalegiftlerp = 1;
   }
   xgift = lerp(xgift,xgiftlerp,0.1)
   ygift = lerp(ygift,ygiftlerp,0.1)
   scalegift = lerp(scalegift,scalegiftlerp,0.1)
   
   if point_distance(xgift,ygift,(room_width/2),(room_height/2)) < 3 && animgift = 1 {
   animgift = 0
   scalegift = 1
   xgift = room_width-(room_width/10);
   ygift = room_height-(room_height/20);
   }
   draw_set_color(color1);
   
   //GIFT
   draw_sprite_ext(spr_cardfond,0,xgift,ygift,scalegift,scalegift,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,room_width-(room_width/10),room_height/15,0.2,0.2,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,room_width/10+5,room_height/15-15,0.2,0.2,0,color3,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/10)+10,(room_height/15)+5-15,0.2,0.2,0,color5,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/10)+15,(room_height/15)+10-15,0.2,0.2,0,color4,1)
   draw_sprite_ext(spr_cardfond,0,(room_width/10)+20,(room_height/15)+15-15,0.2,0.2,0,color3,1)
   
   
   draw_text_outline(room_width/4,room_height/35,""+string(level+49),color6,800,0,50)
   }}
   
   
   