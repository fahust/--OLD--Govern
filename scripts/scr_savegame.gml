ini_open(working_directory+"savedata.ini");
//experience = ini_w_real("save", "experience", 0);
ini_write_real("save", "experience", experience);
ini_write_real("save", "level", level);
ini_write_real("save", "language", global.language);

ini_write_real("save", "nbrjourttal", nbrjourttal);

ini_write_real("save", "spritedead1", spritedead[1]);
ini_write_real("save", "nbrdejoursurvec1", nbrdejoursurvec[1]);
ini_write_real("save", "spritedead2", spritedead[2]);
ini_write_real("save", "nbrdejoursurvec2", nbrdejoursurvec[2]);
ini_write_real("save", "spritedead3", spritedead[3]);
ini_write_real("save", "nbrdejoursurvec3", nbrdejoursurvec[3]);
ini_write_real("save", "spritedead4", spritedead[4]);
ini_write_real("save", "nbrdejoursurvec4", nbrdejoursurvec[4]);
//level = ini_read_real("save", "level", 1);
//score = ini_read_real("save", "experience", experience);
//score = ini_read_real("save", "experience", experience);
ini_close();
