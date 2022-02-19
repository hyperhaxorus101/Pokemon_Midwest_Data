# Pokemon_Midwest_Data
I went through each type picking Pokemon I thought would fit well in a midwest-inspired region. Some will be obvious references to animals found there or the cultural and economic features (such as having machinery-inspired Pokemon) while others may be references to lore or urban legends (Zoroark for the Michigan Dog Man), things the region is known for (Cherubi and Cherrim to represent Traverse City being known for cherries), or will be loose "fill-ins" for animals that don't have Pokemon yet (Arrokuda and Barraskewda as stand-ins for Pike). Some are included that fit very loosely but were needed for type diversity (Like Dragonite in the lakes, or Flygon in the Sleeping Bear Dunes). Very few were just picked for type diversity or to be used as fill ins, but a some were, so if you see any you think should be removed let me know.
I also included all of my data here, including a list of the Pokemon I selected, an R script I used for data analysis of the types here, and the data generated itself.
I also included data for each pre-existing region on how many Pokemon from that region were used (ignoring forms). 

Midwest.R is the R script.
Midwest.csv is the Pokemon list. -R denotes a regional variant of a Pokemon.
Generations_Distribution.txt is the file with the data on Pokemon distributions from pre-existing regions.
MidwestDataOutput.csv is the type data outputted by the R script.
NOTE: TypeDistDiff refers to the difference between the % of X type present in the 240 selected compared to the actual % of all existing Pokemon, pulled from Bulbapedia. (Normal types for example make up 13.15% of all Pokemon, or a value of 0.1315). https://bulbapedia.bulbagarden.net/wiki/Normal_(type). I used raw values instead of % values. Multiply the raw value by 100% to get the percentage. A negative value means there are less of that type present in the 240 than expected, while a higher value means that there are more. 


If you try to run the R script itself, you may need to change file names and locations.

I will update as needed.
