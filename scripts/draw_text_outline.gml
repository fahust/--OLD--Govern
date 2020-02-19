///draw_text_outline(x, y, text, *outline_color,line,valign,sep);
draw_set_valign(argument[5]);

var x1 = argument[0],
  y1 = argument[1],
  text = argument[2];
  c1 = c_black;

var c2 = draw_get_colour();

if (argument_count >= 4)
{
  c1 = argument[3];
}

draw_set_color(c1);
vart = 0.5
draw_text_ext(x1 - vart, y1 - vart, text,argument[6],argument[4]);
draw_text_ext(x1, y1 - vart, text,argument[6],argument[4]);
draw_text_ext(x1 + vart, y1 - vart, text,argument[6],argument[4]);
draw_text_ext(x1 - vart, y1, text,argument[6],argument[4]);
draw_text_ext(x1 + vart, y1, text,argument[6],argument[4]);
draw_text_ext(x1 - vart, y1 + vart, text,argument[6],argument[4]);
draw_text_ext(x1, y1 + vart, text,argument[6],argument[4]);
draw_text_ext(x1 + vart, y1 + vart, text,argument[6],argument[4]);

draw_set_color(c2);

draw_text_ext(x1, y1, text,argument[6],argument[4]);
