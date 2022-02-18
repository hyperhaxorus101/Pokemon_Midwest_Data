install.packages("writexl")
library("writexl")
Pokemon = read.csv("C:\\Users\\hyper\\Documents\\Midwest.csv")
size = nrow(Pokemon)
Normal = 0
NormalDist = .1315
Fire = 0
FireDist = .0829
Fighting = 0
FightingDist = .0773
Water = 0
WaterDist = .1602
Flying = 0
FlyingDist = .1171
Grass = 0
GrassDist = .1215
Poison = 0
PoisonDist = .0818
Electric = 0
ElectricDist = .0674
Ground = 0
GroundDist = .0773
Psychic = 0
PsychicDist = .1083
Rock = 0
RockDist = .0762
Ice = 0
IceDist = .0564
Bug = 0
BugDist = .0939
Dragon = 0
DragonDist = .0674
Ghost = 0
GhostDist = .0663
Dark = 0
DarkDist = .0762
Steel = 0
SteelDist = .0729
Fairy = 0
FairyDist = .0663

for (i in 1:size){
  if (((Pokemon[i,2]) == "Normal") || ((Pokemon[i,3]) == "Normal")){
    Normal = Normal + 1
  }
  if (((Pokemon[i,2]) == "Fire") || ((Pokemon[i,3]) == "Fire")){
    Fire = Fire + 1
  }
  if (((Pokemon[i,2]) == "Fighting") || ((Pokemon[i,3]) == "Fighting")){
    Fighting = Fighting + 1
  }
  if (((Pokemon[i,2]) == "Water") || ((Pokemon[i,3]) == "Water")){
    Water = Water + 1
  }
  if (((Pokemon[i,2]) == "Flying") || ((Pokemon[i,3]) == "Flying")){
    Flying = Flying + 1
  }
  if (((Pokemon[i,2]) == "Grass") || ((Pokemon[i,3]) == "Grass")){
    Grass = Grass + 1
  }
  if (((Pokemon[i,2]) == "Poison") || ((Pokemon[i,3]) == "Poison")){
    Poison = Poison + 1
  }
  if (((Pokemon[i,2]) == "Electric") || ((Pokemon[i,3]) == "Electric")){
    Electric = Electric + 1
  }
  if (((Pokemon[i,2]) == "Ground") || ((Pokemon[i,3]) == "Ground")){
    Ground = Ground + 1
  }
  if (((Pokemon[i,2]) == "Psychic") || ((Pokemon[i,3]) == "Psychic")){
    Psychic = Psychic + 1
  }
  if (((Pokemon[i,2]) == "Rock") || ((Pokemon[i,3]) == "Rock")){
    Rock = Rock + 1
  }
  if (((Pokemon[i,2]) == "Ice") || ((Pokemon[i,3]) == "Ice")){
    Ice = Ice + 1
  }
  if (((Pokemon[i,2]) == "Bug") || ((Pokemon[i,3]) == "Bug")){
    Bug = Bug + 1
  }
  if (((Pokemon[i,2]) == "Dragon") || ((Pokemon[i,3]) == "Dragon")){
    Dragon = Dragon + 1
  }
  if (((Pokemon[i,2]) == "Ghost") || ((Pokemon[i,3]) == "Ghost")){
    Ghost = Ghost + 1
  }
  if (((Pokemon[i,2]) == "Dark") || ((Pokemon[i,3]) == "Dark")){
    Dark = Dark + 1
  }
  if (((Pokemon[i,2]) == "Steel") || ((Pokemon[i,3]) == "Steel")){
    Steel = Steel + 1
  }
  if (((Pokemon[i,2]) == "Fairy") || ((Pokemon[i,3]) == "Fairy")){
    Fairy = Fairy + 1
  }
}

NormalDistDiff = (Normal/size) - NormalDist
FireDistDiff = (Fire/size) - FireDist
FightingDistDiff = (Fighting/size) - FightingDist
WaterDistDiff = (Water/size) - WaterDist
FlyingDistDiff = (Flying/size) - FlyingDist
GrassDistDiff = (Grass/size) - GrassDist
PoisonDistDiff = (Poison/size) - PoisonDist
ElectricDistDiff = (Electric/size) - ElectricDist
GroundDistDiff = (Ground/size) - GroundDist
PsychicDistDiff = (Psychic/size) - PsychicDist
RockDistDiff = (Rock/size) - RockDist
IceDistDiff = (Ice/size) - IceDist
BugDistDiff = (Bug/size) - BugDist
DragonDistDiff = (Dragon/size) - DragonDist
GhostDistDiff = (Ghost/size) - GhostDist
DarkDistDiff = (Dark/size) - DarkDist
SteelDistDiff = (Steel/size) - SteelDist
FairyDistDiff = (Fairy/size) - FairyDist

Type <- c("Normal", "Fire", "Fighting", "Water", "Flying", "Grass", "Poison", 
          "Electric", "Ground", "Psychic", "Rock", "Ice", "Bug", "Dragon", "Ghost", 
          "Dark", "Steel", "Fairy")
NumOfType <- c(Normal, Fire, Fighting, Water, Flying, Grass, Poison, 
              Electric, Ground, Psychic, Rock, Ice, Bug, Dragon, Ghost, 
              Dark, Steel, Fairy)
TypeDistDiff <- c(NormalDistDiff, FireDistDiff, FightingDistDiff, WaterDistDiff, 
                  FlyingDistDiff, GrassDistDiff, PoisonDistDiff, ElectricDistDiff, 
                  GroundDistDiff, PsychicDistDiff, RockDistDiff, IceDistDiff, 
                  BugDistDiff, DragonDistDiff, GhostDistDiff, 
                  DarkDistDiff, SteelDistDiff, FairyDistDiff)

Data <- data.frame(Type, NumOfType, TypeDistDiff)

write_xlsx(Data,"C:\\Users\\hyper\\Documents\\MidwestDataOutput.xlsx")
