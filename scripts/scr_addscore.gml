obj_controller.nbrjourttal += obj_controller.nbrjour

if obj_controller.nbrjour > obj_controller.nbrdejoursurvec[1] {
//descendre les scores
obj_controller.nbrdejoursurvec[4] = obj_controller.nbrdejoursurvec[3]
obj_controller.spritedead[4] = obj_controller.spritedead[3]
obj_controller.nbrdejoursurvec[3] = obj_controller.nbrdejoursurvec[2]
obj_controller.spritedead[3] = obj_controller.spritedead[2]
obj_controller.nbrdejoursurvec[2] = obj_controller.nbrdejoursurvec[1]
obj_controller.spritedead[2] = obj_controller.spritedead[1]

//rajouter nvo score
obj_controller.nbrdejoursurvec[1] = obj_controller.nbrjour
if obj_controller.stat[1] <= 0 or obj_controller.stat[1] >= 100 {obj_controller.spritedead[1] = 1}
if obj_controller.stat[2] <= 0 or obj_controller.stat[2] >= 100 {obj_controller.spritedead[1] = 2}
if obj_controller.stat[3] <= 0 or obj_controller.stat[3] >= 100 {obj_controller.spritedead[1] = 3}
if obj_controller.stat[4] <= 0 or obj_controller.stat[4] >= 100 {obj_controller.spritedead[1] = 4}
if obj_controller.stat[5] <= 0 or obj_controller.stat[5] >= 100 {obj_controller.spritedead[1] = 5}

}else if obj_controller.nbrjour > obj_controller.nbrdejoursurvec[2] {
//descendre les scores
obj_controller.nbrdejoursurvec[4] = obj_controller.nbrdejoursurvec[3]
obj_controller.spritedead[4] = obj_controller.spritedead[3]
obj_controller.nbrdejoursurvec[3] = obj_controller.nbrdejoursurvec[2]
obj_controller.spritedead[3] = obj_controller.spritedead[2]

//rajouter nvo score
obj_controller.nbrdejoursurvec[2] = obj_controller.nbrjour
if obj_controller.stat[1] <= 0 or obj_controller.stat[1] >= 100 {obj_controller.spritedead[2] = 1}
if obj_controller.stat[2] <= 0 or obj_controller.stat[2] >= 100 {obj_controller.spritedead[2] = 2}
if obj_controller.stat[3] <= 0 or obj_controller.stat[3] >= 100 {obj_controller.spritedead[2] = 3}
if obj_controller.stat[4] <= 0 or obj_controller.stat[4] >= 100 {obj_controller.spritedead[2] = 4}
if obj_controller.stat[5] <= 0 or obj_controller.stat[5] >= 100 {obj_controller.spritedead[2] = 5}
}else if obj_controller.nbrjour > obj_controller.nbrdejoursurvec[3] {
//descendre les scores
obj_controller.nbrdejoursurvec[4] = obj_controller.nbrdejoursurvec[3]
obj_controller.spritedead[4] = obj_controller.spritedead[3]

//rajouter nvo score
obj_controller.nbrdejoursurvec[3] = obj_controller.nbrjour
if obj_controller.stat[1] <= 0 or obj_controller.stat[1] >= 100 {obj_controller.spritedead[3] = 1}
if obj_controller.stat[2] <= 0 or obj_controller.stat[2] >= 100 {obj_controller.spritedead[3] = 2}
if obj_controller.stat[3] <= 0 or obj_controller.stat[3] >= 100 {obj_controller.spritedead[3] = 3}
if obj_controller.stat[4] <= 0 or obj_controller.stat[4] >= 100 {obj_controller.spritedead[3] = 4}
if obj_controller.stat[5] <= 0 or obj_controller.stat[5] >= 100 {obj_controller.spritedead[3] = 5}
}else if obj_controller.nbrjour > obj_controller.nbrdejoursurvec[4] {
obj_controller.nbrdejoursurvec[4] = obj_controller.nbrjour
if obj_controller.stat[1] <= 0 or obj_controller.stat[1] >= 100 {obj_controller.spritedead[4] = 1}
if obj_controller.stat[2] <= 0 or obj_controller.stat[2] >= 100 {obj_controller.spritedead[4] = 2}
if obj_controller.stat[3] <= 0 or obj_controller.stat[3] >= 100 {obj_controller.spritedead[4] = 3}
if obj_controller.stat[4] <= 0 or obj_controller.stat[4] >= 100 {obj_controller.spritedead[4] = 4}
if obj_controller.stat[5] <= 0 or obj_controller.stat[5] >= 100 {obj_controller.spritedead[4] = 5}
} 
