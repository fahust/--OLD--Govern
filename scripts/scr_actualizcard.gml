ds_list_clear(list);
ds_list_clear(listcard);
ds_grid_clear(grid,0);

noexist = 0
ds_list_add(listcard, 0);


nbrdecartettal = level+49
ttalcard = 500
var i;
for (i = 0; i < ttalcard; i += 1){
    randomize();
    listvar = floor(random_range(1,nbrdecartettal))
    pos = ds_list_find_index(listcard, listvar)
    //show_message(pos)
    if pos = -1 //or listvar > 37 
    {ds_list_add(listcard, listvar);}
    //if noexist > 1000 {i = 1000001}
    }
    //29 35 10 24 32 20 7 15 14 36 31 30 2 28 13 4 17 5 8 34 1 22 9 21 
    var i;
for (i = 0; i < ttalcard; i += 1){
scr_newlistcard(ds_list_find_value(listcard, i),i);
}
