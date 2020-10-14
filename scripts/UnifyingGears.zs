#priority 9
# Author: Atricos

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Casting;
import mods.immersiveengineering.MetalPress;
import mods.thermalexpansion.Compactor;
import mods.tconstruct.Melting;

print("STARTING UnifyingGears.zs");

# Wooden Gears
#recipes.replaceAllOccurences(<ore:gearWood>, <thermalfoundation:material:22>, <*>);
<ore:gearWood>.removeItems([<appliedenergistics2:material:40>, <enderio:item_material:9>]);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:23>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:23>, <thermalfoundation:material:22>, <liquid:stone>, 288, true, 1000);
recipes.remove(<appliedenergistics2:material:40>);
recipes.remove(<enderio:item_material:9>);

# Stone Gears
#recipes.replaceAllOccurences(<ore:gearStone>, <thermalfoundation:material:23>, <*>);
<ore:gearStone>.remove(<enderio:item_material:10>);
recipes.remove(<enderio:item_material:10>);

# Diamond Gear
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:26>, <minecraft:diamond>, <immersiveengineering:mold:1>, 4000, 4);

# Emerald Gear
mods.immersiveengineering.MetalPress.addRecipe(<thermalfoundation:material:27>, <minecraft:emerald>, <immersiveengineering:mold:1>, 4000, 4);

# Titanium Gear
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand:*>, <libvulpes:productgear:7>);
mods.tconstruct.Casting.removeTableRecipe(<libvulpes:productgear:7>);
recipes.remove(<libvulpes:productgear:7>);
#mods.thermalexpansion.Compactor.removeGearRecipe(<libvulpes:productingot:7>);
mods.thermalexpansion.Compactor.removeGearRecipe(<galacticraftplanets:item_basic_asteroids>);
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productgear:7>);
mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <libvulpes:productgear:7>);
mods.thermalexpansion.InductionSmelter.addRecipe(<galacticraftplanets:item_basic_asteroids> * 4, <minecraft:sand:*>, <contenttweaker:titanium_gear>, 3000, <thermalfoundation:material:864>, 20);
recipes.addShaped(<contenttweaker:titanium_gear>, [[null,<galacticraftplanets:item_basic_asteroids>,null],[<galacticraftplanets:item_basic_asteroids>,<minecraft:iron_ingot>,<galacticraftplanets:item_basic_asteroids>],[null,<galacticraftplanets:item_basic_asteroids>,null]]);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:titanium_gear>, <tconstruct:cast_custom:4>, <liquid:titanium>, 576, false);
mods.thermalexpansion.Compactor.addGearRecipe(<contenttweaker:titanium_gear>, <galacticraftplanets:item_basic_asteroids> * 4, 4000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:titanium_gear>, <galacticraftplanets:item_basic_asteroids>, <immersiveengineering:mold:1>, 4000, 4);

# Removing TC Casting recipes
val noCastGears = [<thermalfoundation:material:24>,<thermalfoundation:material:25>,<thermalfoundation:material:256>,<thermalfoundation:material:257>,<thermalfoundation:material:258>,<thermalfoundation:material:259>,<thermalfoundation:material:260>,<thermalfoundation:material:261>,<thermalfoundation:material:262>,<thermalfoundation:material:263>,<thermalfoundation:material:264>,<thermalfoundation:material:288>,<thermalfoundation:material:289>,<thermalfoundation:material:290>,<thermalfoundation:material:291>,<thermalfoundation:material:292>,<thermalfoundation:material:293>,<thermalfoundation:material:294>,<thermalfoundation:material:295>] as IItemStack[];
val respLiquids = [<liquid:iron>,<liquid:gold>,<liquid:copper>,<liquid:tin>,<liquid:silver>,<liquid:lead>,<liquid:aluminum>,<liquid:nickel>,<liquid:platinum>,<liquid:iridium>,<liquid:mithril>,<liquid:steel>,<liquid:electrum>,<liquid:invar>,<liquid:bronze>,<liquid:constantan>,<liquid:signalum>,<liquid:lumium>,<liquid:enderium>] as ILiquidStack[];
for i, gear in noCastGears {
	mods.tconstruct.Casting.removeTableRecipe(gear, respLiquids[i]);
}

print("ENDING UnifyingGears.zs");