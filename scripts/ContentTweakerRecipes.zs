# Author: Atricos

import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.Transposer;
import mods.appliedenergistics2.Inscriber;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Grindstone;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Pulverizer;
import mods.immersiveengineering.Crusher as IECrusher;
import mods.extrautils2.Crusher as EUCrusher;
import mods.bloodmagic.AlchemyTable;
import mods.appliedenergistics2.Grinder;
import mods.enderio.SagMill;
import moretweaker.lightningcraft.LightningCrusher;
import mods.thermalexpansion.InductionSmelter;
import mods.roots.Mortar;
import mods.immersiveengineering.AlloySmelter as IEAlloySmelter;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;
import mods.thermalexpansion.Sawmill;
import mods.bloodmagic.BloodAltar;

print("STARTING ContentTweakerRecipes.zs");

# Early game recipes can be found in MinecraftRecipes.zs
# (Including the Stone Hammer, and other ingredients for a Crafting Table and a Furnace.)

# Iron Hammer
recipes.addShaped(<contenttweaker:iron_hammer>, [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[null,<ore:stickWood>,null]]);
recipes.addShapeless(<contenttweaker:rough_iron_mesh>, [<contenttweaker:rough_hammer>.anyDamage().transformDamage(1), <ore:oreIron>, <ore:oreIron>]);

# Encoded Bag of Truth (No spoilers here!)
recipes.addShapeless(<extrautils2:bagofholding>.withTag({display: {Lore: ["§c§lUNLOCKED"], Name:"§d§lBag of Truth"}, Items: {m: [10, 12, 119, 114, 105, 116, 116, 101, 110, 95, 98, 111, 111, 107, 1, -111, 31, -117, 8, 0, 0, 0, 0, 0, 0, 0, 93, 81, -69, 110, 20, 49, 20, 117, 16, 33, 67, 26, 106, -70, -61, 118, 72, -53, 40, 65, -111, -112, -46, 81, 80, 68, 2, -102, 32, -47, 108, -29, -20, -100, 89, 59, -15, -40, 35, -5, 122, 55, 35, -108, -17, -55, 127, -28, 31, -8, 16, -2, 0, 123, -78, 9, 18, -19, 61, -9, -68, -18, 61, 86, -22, -75, 58, 28, -11, -122, -87, 81, 74, -67, 80, 127, 126, 45, -124, -73, -78, 56, 95, -4, 48, -60, 64, -19, -83, -33, 32, -12, 112, -74, 39, 108, -126, 4, -12, -42, 119, -80, -110, -98, -32, 22, 63, -83, 24, -92, -68, 54, 101, 109, -80, -62, 14, 98, 7, 98, 71, 24, -67, 37, -126, -57, 23, 29, -59, 44, -111, 19, 33, -90, -54, 84, -68, 104, -115, 57, -90, 92, 54, -115, 22, 110, 25, 49, -24, 27, 38, 76, 33, 23, -26, 56, 78, -48, -59, -86, -49, -82, -73, -50, -79, 107, 87, 126, -27, 47, 100, -107, 79, 78, 62, 126, 74, -48, 87, 33, 75, -111, 35, -82, 67, -114, -98, -45, 18, 62, 60, 14, 58, 38, -79, 94, -117, 13, -66, -59, 101, -104, 101, 81, 13, 38, 12, 97, -96, -105, 50, 17, 97, 108, 23, 119, -22, -9, 115, -27, 11, -104, 48, 18, 87, 44, -60, -46, 122, 14, 58, -22, -11, 13, 118, -70, -72, -107, 28, -2, 57, 79, 118, -82, -82, -16, 118, 100, -76, -12, 107, 46, 103, 104, -81, 80, 34, 68, 62, -78, 4, -114, 58, 73, -71, 1, -97, -84, 107, 59, 49, 33, -122, -68, 49, 110, 2, -3, 117, -104, -10, -27, 46, -55, 25, -74, 30, -89, -19, -23, 25, 66, -124, 43, -105, -119, -40, -43, 11, -41, 102, -66, 68, -83, 98, -17, 112, -2, -66, 50, 62, -32, -77, 68, -69, 14, 105, 89, -28, -69, 57, 109, -57, -19, -30, -82, 81, -81, 116, -82, 46, -22, 104, -65, 112, -84, -114, 58, -101, 70, -89, -89, 70, -67, -4, -82, 7, -86, -73, 15, -9, 103, 15, -9, -82, 126, -6, -37, -65, 79, 127, 45, -97, 86, -115, 58, 20, 43, -114, -22, -51, 127, -56, -127, 106, 34, 83, 112, 91, 118, 7, -22, 47, -34, -85, 39, 91, 63, 2, 0, 0] as byte[] as byte[]}}), [<contenttweaker:bag_of_truth_locked>, <contenttweaker:key_to_infinity>]);

# Bag of Truth (Locked), in case the player loses it
recipes.addShaped(<contenttweaker:bag_of_truth_locked>.withTag({display: {Name:"§d§lBag of Truth (Locked)"}}), [[null,<enderio:item_material:20>,null],[<enderio:item_material:20>,<extrautils2:bagofholding>,<enderio:item_material:20>],[null,<thermalfoundation:security>,null]]);

# Key to Infinity
mods.avaritia.ExtremeCrafting.addShaped("Key to Infinity", <contenttweaker:key_to_infinity>.withTag({display: {Name:"§d§lKey to Infinity"}}),
[[null,null,null,null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null],
[null,null,null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>],
[null,null,null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>],
[null,null,null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>],
[null,null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null],
[null,null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null,null,null,null],
[null,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null,null,null,null,null],
[<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,<avaritia:block_resource:1>,null,null,null,null],
[<avaritia:block_resource:1>,<avaritia:block_resource:1>,null,<avaritia:block_resource:1>,null,null,null,null,null]]);

# Bag of Truth and Key to Infinity tooltips
<contenttweaker:bag_of_truth_locked>.addTooltip(format.red(format.bold("LOCKED")));
<contenttweaker:bag_of_truth_locked>.addTooltip(format.red("Requires a ") + format.lightPurple(format.bold("Key to Infinity")) + format.red(" to open."));
<contenttweaker:bag_of_truth_locked>.addTooltip(format.red("(This is the entire goal of the modpack.)"));
<contenttweaker:bag_of_truth_locked>.addTooltip(format.darkRed(format.italic("This is craftable, if you ever lose it.")));
<contenttweaker:bag_of_truth_locked>.addTooltip(format.darkRed(format.italic("Warning: Crafting deletes the input bag's inventory.")));
<contenttweaker:key_to_infinity>.addTooltip(format.red("Craft together with a ") + format.lightPurple(format.bold("Bag of Truth (Locked)")) + format.red(" to open it!"));

# Compressed Obsidian
recipes.addShaped(<contenttweaker:compressed_obsidian1>, [[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);
recipes.addShapeless(<minecraft:obsidian> * 9, [<contenttweaker:compressed_obsidian1>]);
recipes.addShaped(<contenttweaker:compressed_obsidian2>, [[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>],[<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>,<contenttweaker:compressed_obsidian1>]]);
recipes.addShapeless(<contenttweaker:compressed_obsidian1> * 9, [<contenttweaker:compressed_obsidian2>]);
recipes.addShaped(<contenttweaker:compressed_obsidian3>, [[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>],[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>],[<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>,<contenttweaker:compressed_obsidian2>]]);
recipes.addShapeless(<contenttweaker:compressed_obsidian2> * 9, [<contenttweaker:compressed_obsidian3>]);

# Baykok's Bloodied Stone
recipes.addShaped(<contenttweaker:baykoks_bloodied_stone> * 8, [[<tconstruct:edible:3>,<minecraft:obsidian>,<tconstruct:edible:3>],[<minecraft:obsidian>,<totemic:baykok_bow>.anyDamage().transformDamage(1),<minecraft:obsidian>],[<tconstruct:edible:3>,<minecraft:obsidian>,<tconstruct:edible:3>]]);

# Treated Leather
recipes.addShapeless(<contenttweaker:treated_leather>, [<minecraft:leather>,<minecraft:water_bucket>,<ore:dyeLime>,<minecraft:flint>]);

# Buffalo Hide Scrap
recipes.addShaped(<contenttweaker:buffao_hide_scrap> * 8, [[<totemic:buffalo_items>],[<totemic:buffalo_items>]]);

# Imp Leather Scrap
recipes.addShaped(<contenttweaker:imp_leather_scrap> * 8, [[<natura:materials:6>],[<natura:materials:6>]]);

# Industrial Leather
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:industrial_leather>, <contenttweaker:treated_leather>, null, 200, 40, [<contenttweaker:buffao_hide_scrap>, <contenttweaker:imp_leather_scrap>, <roots:stalicripe>, <minecraft:sugar>]);
mods.mekanism.chemical.injection.addRecipe(<contenttweaker:raw_industrial_leather>, <gas:sodium> * 200, <contenttweaker:industrial_leather>);

# Raw Industrial Leather
recipes.addShapeless(<contenttweaker:raw_industrial_leather>, [<contenttweaker:treated_leather>,<contenttweaker:buffao_hide_scrap>,<contenttweaker:imp_leather_scrap>,<roots:stalicripe>,<minecraft:sugar>]);

# Twilight Rock
recipes.addShapeless(<contenttweaker:twilight_rock>, [<contenttweaker:baykoks_bloodied_stone>, <immersiveengineering:material:18>, <roots:stalicripe>, <ore:dyeBrown>]);
<contenttweaker:twilight_rock>.addTooltip(format.red(format.bold("This is the item used to enter the Twilight Forest.")));

# Twilight Key
recipes.addShaped(<contenttweaker:twilight_key>, [[<ore:ingotConstantan>,<ore:nuggetConstantan>],[<ore:ingotConstantan>,null],[<contenttweaker:twilight_rock>,null]]);
<contenttweaker:twilight_key>.addTooltip(format.red(format.bold("Only use this item if you wish to skip the Twilight Forest.")));
<contenttweaker:twilight_key>.addTooltip(format.red(format.bold("It can be used to craft the Lamp of Cinders, which is the final item of the Twilight Forest progression.")));

# Artificial Scarab Body
recipes.addShaped(<contenttweaker:artificial_scarab_body>, [[<lightningcraft:rod:5>,<immersiveengineering:material:19>,<lightningcraft:rod:5>],[<contenttweaker:industrial_leather>,<mysticalworld:carapace>,<contenttweaker:industrial_leather>],[null,<minecraft:gold_block>,null]]);

# Flawless Scarab Body
recipes.addShaped(<contenttweaker:flawless_scarab_body>, [[<minecraft:blaze_powder>,<divinerpg:pure_aquatic_pellets>,<minecraft:blaze_powder>],[<minecraft:diamond>,<contenttweaker:artificial_scarab_body>,<minecraft:diamond>],[<minecraft:blaze_powder>,<twilightforest:lamp_of_cinders>.reuse(),<minecraft:blaze_powder>]]);

# Flawless Scarab Wings
recipes.addShaped(<contenttweaker:flawless_scarab_wings>, [[<minecraft:blaze_powder>,<actuallyadditions:item_misc:15>,<minecraft:blaze_powder>],[<contenttweaker:industrial_leather>,<contenttweaker:artificial_scarab_wings>,<contenttweaker:industrial_leather>],[<minecraft:blaze_powder>,<twilightforest:lamp_of_cinders>.reuse(),<minecraft:blaze_powder>]]);

# Industrial Slimeball
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:industrial_slime_ball>, <ore:slimeball>, null, 150, 80, [<minecraft:porkchop>, <minecraft:beef>, <mekanism:salt>, <minecraft:clay_ball>]);

# Energized Osmium Ingot
recipes.addShaped(<contenttweaker:energized_osmium_ingot> * 8, [[<ore:ingotOsmium>,<ore:ingotOsmium>,<ore:ingotOsmium>],[<ore:ingotOsmium>,<forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}),<ore:ingotOsmium>],[<ore:ingotOsmium>,<ore:ingotOsmium>,<ore:ingotOsmium>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_osmium_ingot>, <mekanism:ingot:1>, <liquid:biodiesel> * 100, 1000);
recipes.addShapeless(<contenttweaker:energized_osmium_ingot> * 9, [<contenttweaker:energized_osmium_block>]);

# Energized Osmium Block
recipes.addShaped(<contenttweaker:energized_osmium_block>, [[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>],[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>],[<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>,<contenttweaker:energized_osmium_ingot>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_osmium_block>, <mekanism:basicblock>, <liquid:biodiesel> * 900, 9000);

# Energized Certus Quartz Crystal
recipes.addShaped(<contenttweaker:energized_certus_quartz_crystal> * 8, [[<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>],[<ore:crystalCertusQuartz>,<forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}),<ore:crystalCertusQuartz>],[<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>,<ore:crystalCertusQuartz>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_certus_quartz_crystal>, <appliedenergistics2:material>, <liquid:biodiesel> * 100, 1000);
recipes.addShapeless(<contenttweaker:energized_certus_quartz_crystal> * 4, [<contenttweaker:energized_certus_quartz_block>]);

# Energized Certus Quartz Block
recipes.addShaped(<contenttweaker:energized_certus_quartz_block>, [[<contenttweaker:energized_certus_quartz_crystal>,<contenttweaker:energized_certus_quartz_crystal>],[<contenttweaker:energized_certus_quartz_crystal>,<contenttweaker:energized_certus_quartz_crystal>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_certus_quartz_block>, <appliedenergistics2:quartz_block>, <liquid:biodiesel> * 400, 9000);

# The Perfect Squad
recipes.addShapeless(<contenttweaker:the_perfect_squad>, [<contenttweaker:arkas_wittyness>, <contenttweaker:guudes_sanity>, <contenttweaker:nebris_justice>, <contenttweaker:pakratts_endurance>]);

# Arkas' Wittyness
recipes.addShapeless(<contenttweaker:arkas_wittyness>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "44a6903b-4bef-4b34-bdf0-6f78ae267eb8", Name: "Arkas"}}), <actuallyadditions:block_smiley_cloud>]);

# Guude's Sanity
recipes.addShapeless(<contenttweaker:guudes_sanity>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "9cc9a90c-7bd6-4b7e-ba0a-76c4a53f4438", Name: "Guude"}}), <thaumcraft:brain>]);

# Nebris' Justice
recipes.addShapeless(<contenttweaker:nebris_justice>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "5a46759f-7636-48c0-9242-55177b159a5f", Name: "Nebris"}}), <minecraft:iron_sword>]);

# Pakratt's Endurance
recipes.addShapeless(<contenttweaker:pakratts_endurance>, [<minecraft:skull:3>.withTag({SkullOwner: {Id: "424f555b-c9a6-414d-9000-6ccb8bcc4a29", Name: "Pakratt0013"}}), <spartanshields:shield_basic_silver>]);

# Printed Operation Circuit
Inscriber.addRecipe(<contenttweaker:printed_operation_circuit>, <ore:ingotMithril>, true, <contenttweaker:inscriber_operation_press>);

# Printed Estimation Circuit
Inscriber.addRecipe(<contenttweaker:printed_estimation_circuit>, <contenttweaker:coated_clathrate>, true, <contenttweaker:inscriber_estimation_press>);

# Printed Methodology Circuit
Inscriber.addRecipe(<contenttweaker:printed_methodolgy_circuit>, <plustic:osmiridiumingot>, true, <contenttweaker:inscriber_methodology_press>);

# Printed Clearance Circuit
Inscriber.addRecipe(<contenttweaker:printed_clearance_circuit>, <divinerpg:apalachia_chunk>, true, <contenttweaker:inscriber_clearance_press>);

# Printed Scheduling Circuit
Inscriber.addRecipe(<contenttweaker:printed_scheduling_circuit>, <divinerpg:mortum_chunk>, true, <contenttweaker:inscriber_scheduling_press>);

# Operation Processor
Inscriber.addRecipe(<contenttweaker:operation_processor>, <minecraft:redstone>, false, <contenttweaker:printed_operation_circuit>, <appliedenergistics2:material:20>);

# Estimation Processor
Inscriber.addRecipe(<contenttweaker:estimation_processor>, <minecraft:redstone>, false, <contenttweaker:printed_estimation_circuit>, <appliedenergistics2:material:20>);

# Methodology Processor
Inscriber.addRecipe(<contenttweaker:methodology_processor>, <minecraft:redstone>, false, <contenttweaker:printed_methodolgy_circuit>, <appliedenergistics2:material:20>);

# Clearance Processor
Inscriber.addRecipe(<contenttweaker:clearance_processor>, <minecraft:redstone>, false, <contenttweaker:printed_clearance_circuit>, <appliedenergistics2:material:20>);

# Scheduling Processor
Inscriber.addRecipe(<contenttweaker:scheduling_processor>, <minecraft:redstone>, false, <contenttweaker:printed_scheduling_circuit>, <appliedenergistics2:material:20>);

# Enriched Gum
recipes.addShapeless(<contenttweaker:enriched_gum>, [<mekanism:enrichedalloy>, <ore:ingotRedAlloy>, <betternether:cincinnasite>, <immersiveengineering:material:18>]);

# Eye of Gaea
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:eye_of_gaea>, <extrautils2:snowglobe:1>, null, 400, 512, [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <ore:blockOsgloglas>, <appliedenergistics2:fluix_block>]);

# Eye of Gaea (Awakened)
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:eye_of_gaea_awakened>, <contenttweaker:eye_of_gaea>, null, 2400, 4096, [<ore:ingotVividAlloy>, <ore:ingotVividAlloy>, <ore:ingotVividAlloy>, <ore:ingotVividAlloy>]);

# Relic Ingot and Block conversion
recipes.addShaped(relicBlock, [[relicIngot,relicIngot,relicIngot],[relicIngot,relicIngot,relicIngot],[relicIngot,relicIngot,relicIngot]]);
recipes.addShapeless(relicIngot * 9, [relicBlock]);

# Implanted Emerald
recipes.addShaped(<contenttweaker:implanted_emerald>, [[<ore:nuggetEmerald>,<minecraft:emerald>,<ore:nuggetEmerald>],[<minecraft:emerald>,<contenttweaker:compressed_obsidian1>,<minecraft:emerald>],[<ore:nuggetEmerald>,<minecraft:emerald>,<ore:nuggetEmerald>]]);

# Mixed Erebusian Rocks
recipes.addShapeless(<contenttweaker:mixed_erebusian_rocks>, [<erebus:materials:47>,<erebus:materials:47>,<erebus:materials:74>,<erebus:materials:47>,<erebus:materials:74>,<erebus:materials:2>,<erebus:materials:74>,<erebus:materials:2>,<erebus:materials:2>]);

# Mixed Erebusian Stone
recipes.addShaped(<contenttweaker:mixed_erebusian_stone>, [[<contenttweaker:mixed_erebusian_rocks>,<contenttweaker:mixed_erebusian_rocks>],[<contenttweaker:mixed_erebusian_rocks>,<contenttweaker:mixed_erebusian_rocks>]]);

# Mixed Mushroom Compound Block
recipes.addShapeless(<contenttweaker:mixed_mushroom_compound_block>, [<erebus:dark_capped_mushroom_block>,<erebus:sarcastic_czech_mushroom_block>,<erebus:grandmas_shoes_mushroom_block>,<erebus:dutch_cap_mushroom_block>,<erebus:kaizers_fingers_mushroom_block>]);

# Hardened Ember Moosh
recipes.addShaped(<contenttweaker:hardened_amber_moosh>, [[<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>],[<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>],[<erebus:amber_glass>,<contenttweaker:mixed_mushroom_compound_block>,<erebus:amber_glass>]]);
<contenttweaker:hardened_amber_moosh>.addTooltip(format.italic(format.darkPurple("Surprisingly tough!")));

# Power Egg
recipes.addShapedMirrored(<contenttweaker:power_egg>, [[<erebus:materials:27>,<erebus:materials:9>,<erebus:materials:16>],[<erebus:tarantula_egg>,<erebus:jade_block>,<erebus:antlion_egg>],[<erebus:materials:27>,<erebus:materials:9>,<erebus:materials:16>]]);

# Crown of Skies
recipes.addShaped(<contenttweaker:crown_of_skies>, [[null,<ore:woolWhite>,null],[<contenttweaker:hardened_amber_moosh>,<contenttweaker:power_egg>,<contenttweaker:hardened_amber_moosh>],[<contenttweaker:mixed_erebusian_stone>,<contenttweaker:mixed_erebusian_stone>,<contenttweaker:mixed_erebusian_stone>]]);
<contenttweaker:crown_of_skies>.addTooltip(format.red(format.bold("Right click on an Aether Portal block to gain access to the dimension!")));

# Aether Power Core
recipes.addShapedMirrored(<contenttweaker:aether_power_core>, [[<ore:ingotEnergeticAlloy>,<ore:blockEnergeticAlloy>,<ore:ingotEnergeticAlloy>],[<contenttweaker:bronze_aether_coin>,<contenttweaker:silver_aether_coin>,<contenttweaker:golden_aether_coin>],[<ore:ingotEnergeticAlloy>,<ore:blockEnergeticAlloy>,<ore:ingotEnergeticAlloy>]]);

# Golder Molder Folder
recipes.addShaped(<contenttweaker:golder_molder_folder>, [[<aether_legacy:ice_ring>,<aether_legacy:ice_ring>,null],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,<aether_legacy:ice_pendant>],[<thermalfoundation:material:33>,<thermalfoundation:material:33>,null]]);
<contenttweaker:golder_molder_folder>.addTooltip(format.darkRed(format.italic("An older boulder told 'er: Hold 'er shoulder!")));

# Enchanted Golden Berry
recipes.addShaped(<contenttweaker:enchanted_golden_berry>, [[<minecraft:gold_ingot>,<aether_legacy:enchanted_blueberry>,<minecraft:gold_ingot>],[<aether_legacy:golden_amber>,<contenttweaker:golder_molder_folder>.anyDamage().transformDamage(1),<aether_legacy:golden_amber>],[<minecraft:gold_ingot>,<aether_legacy:enchanted_gravitite>,<minecraft:gold_ingot>]]);

# Enchanted Golden Berry Stem
recipes.addShaped(<contenttweaker:enchanted_golden_berry_stem>, [[<contenttweaker:enchanted_golden_berry>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry>],[null,<lightningcraft:rod:2>,null],[<contenttweaker:enchanted_golden_berry>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry>]]);

# Enchanted Golden Berry Necklace
recipes.addShaped(<contenttweaker:enchanted_golden_berry_necklace>, [[<contenttweaker:enchanted_golden_berry_stem>,null,<contenttweaker:enchanted_golden_berry_stem>],[<contenttweaker:enchanted_golden_berry_stem>,null,<contenttweaker:enchanted_golden_berry_stem>],[<contenttweaker:enchanted_golden_berry_stem>,<lightningcraft:rod:2>,<contenttweaker:enchanted_golden_berry_stem>]]);

# Healing Stone Block
recipes.addShaped(<contenttweaker:healing_stone_block>, [[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>],[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>],[<aether_legacy:healing_stone>,<aether_legacy:healing_stone>,<aether_legacy:healing_stone>]]);
recipes.addShapeless(<aether_legacy:healing_stone> * 9, [<contenttweaker:healing_stone_block>]);

# Aechomedirus & Block
recipes.addShaped(<contenttweaker:aechomedirus> * 3, [[<ore:dyePurple>,<aether_legacy:aerogel>,<ore:dyePurple>],[<aether_legacy:enchanted_gravitite>,<aether_legacy:skyroot_bucket:3>.transformReplace(<aether_legacy:skyroot_bucket>),<aether_legacy:enchanted_gravitite>],[<aether_legacy:aerogel>,<aether_legacy:aechor_petal>,<aether_legacy:aerogel>]]);
recipes.addShaped(<contenttweaker:aechomedirus_block>, [[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>],[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>],[<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>,<contenttweaker:aechomedirus>]]);
recipes.addShapeless(<contenttweaker:aechomedirus> * 9, [<contenttweaker:aechomedirus_block>]);

# Resonating Orb
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:resonating_orb>, <contenttweaker:healing_stone_block> * 2, null, 240, 800, [<contenttweaker:aechomedirus_block> * 2, <contenttweaker:enchanted_golden_berry_necklace> * 2]);
EIOAlloySmelter.addRecipe(<contenttweaker:resonating_orb>, [<contenttweaker:healing_stone_block> * 2, <contenttweaker:aechomedirus_block> * 2, <contenttweaker:enchanted_golden_berry_necklace> * 2], 40000);

# Santa Armor Set
recipes.addShapeless(<contenttweaker:santa_armor_set>, [<divinerpg:santa_helmet>,<divinerpg:santa_chestplate>,<divinerpg:santa_leggings>,<divinerpg:santa_boots>]);

# Festive Ball
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:santa_armor_set>, null, 240, 800, [<divinerpg:workshop_lamp> * 16, <divinerpg:ice_shards> * 16]);
EIOAlloySmelter.addRecipe(<contenttweaker:festive_ball>, [<contenttweaker:santa_armor_set>, <divinerpg:workshop_lamp> * 16, <divinerpg:ice_shards> * 16], 40000);

# Festive Powder
IECrusher.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 4000);
AACrusher.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.astralsorcery.Grindstone.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:festive_powder>);
Grinder.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 4);
mods.thermalexpansion.Pulverizer.addRecipe(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>, 2000);
EUCrusher.add(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.enderio.SagMill.addRecipe([<contenttweaker:festive_powder>], [100], <contenttweaker:festive_ball>);
LightningCrusher.add(<contenttweaker:festive_powder>, <contenttweaker:festive_ball>);
mods.mekanism.crusher.addRecipe(<contenttweaker:festive_ball>, <contenttweaker:festive_powder>);

# GP Powder
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:gp_powder>, <contenttweaker:festive_powder>, null, 100, 2000, [<mekanism:otherdust> * 4, <minecraft:glowstone_dust> * 4, <minecraft:redstone> * 4, <actuallyadditions:item_dust:7> * 4]);
recipes.addShapeless(<contenttweaker:gp_powder> * 2, [<contenttweaker:gp_powder>, <mekanism:otherdust> , <minecraft:glowstone_dust>, <minecraft:redstone>, <actuallyadditions:item_dust:7>]);

# Osglolapis & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:osglolapis>, <minecraft:dye:4>, null, 80, 256, [<ore:ingotOsgloglas>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:osglolapis>, [<minecraft:dye:4>, <ore:ingotOsgloglas>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:osglolapis>, <minecraft:dye:4>, <ore:ingotOsgloglas>, 160);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:osglolapis>, <minecraft:dye:4>, <plustic:osgloglasingot>, 4000);
recipes.addShaped(<contenttweaker:osglolapis_block>, [[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>],[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>],[<contenttweaker:osglolapis>,<contenttweaker:osglolapis>,<contenttweaker:osglolapis>]]);
recipes.addShapeless(<contenttweaker:osglolapis> * 9, [<contenttweaker:osglolapis_block>]);

# Demonlord Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, null, 80, 384, [<extrautils2:ingredients:3>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:demonlord_ingot>, [<extrautils2:ingredients:11>, <extrautils2:ingredients:3>], 6000);
IEAlloySmelter.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, <extrautils2:ingredients:3>, 240);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:demonlord_ingot>, <extrautils2:ingredients:11>, <extrautils2:ingredients:3>, 6000);
recipes.addShaped(<contenttweaker:demonlord_block>, [[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>],[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>],[<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>,<contenttweaker:demonlord_ingot>]]);
recipes.addShapeless(<contenttweaker:demonlord_ingot> * 9, [<contenttweaker:demonlord_block>]);

# Mobgrindium Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, null, 80, 480, [<minecraft:gunpowder>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, [<contenttweaker:demonlord_ingot>, <minecraft:gunpowder>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:gunpowder>, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:mobgrindium_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:gunpowder>, 8000);
recipes.addShaped(<contenttweaker:mobgrindium_block>, [[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>],[<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>,<contenttweaker:mobgrindium_ingot>]]);
recipes.addShapeless(<contenttweaker:mobgrindium_ingot> * 9, [<contenttweaker:mobgrindium_block>]);

# Open Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, null, 80, 240, [<minecraft:paper>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:open_ingot>, [<contenttweaker:demonlord_ingot>, <minecraft:paper>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:paper>, 150);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:open_ingot>, <contenttweaker:demonlord_ingot>, <minecraft:paper>, 4000);
recipes.addShaped(<contenttweaker:open_block>, [[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>],[<contenttweaker:open_ingot>,<contenttweaker:open_ingot>,<contenttweaker:open_ingot>]]);
recipes.addShapeless(<contenttweaker:open_ingot> * 9, [<contenttweaker:open_block>]);

# Thermal Conductor Rod
recipes.addShapedMirrored(<contenttweaker:thermal_conductor_rod>, [[null,<extrautils2:suncrystal>,<extrautils2:decorativesolidwood:1>],[<extrautils2:suncrystal>,<extrautils2:ingredients:5>,<extrautils2:suncrystal>],[<extrautils2:decorativesolidwood:1>,<extrautils2:suncrystal>,null]]);

# RF Powder
recipes.addShapeless(<contenttweaker:rf_powder> * 2, [<contenttweaker:thermal_conductor_rod>.anyDamage().transformDamage(1),<contenttweaker:gp_powder>,<thermalfoundation:material:99>,<minecraft:experience_bottle>]);

# Coated Clathrate
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <liquid:tree_oil> * 200, 4000);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, null, 80, 240, [<thermalfoundation:material:832>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:coated_clathrate>, [<thermalfoundation:material:895>, <thermalfoundation:material:832>], 4000);
IEAlloySmelter.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <thermalfoundation:material:832>, 150);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:coated_clathrate>, <thermalfoundation:material:895>, <thermalfoundation:material:832>, 4000);

# Dark Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, null, 120, 240, [<thermalfoundation:material:833>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:dark_ingot>, [<thermalfoundation:material:892>, <thermalfoundation:material:833>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, <thermalfoundation:material:833>, 225);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:dark_ingot>, <thermalfoundation:material:892>, <thermalfoundation:material:833>, 8000);
recipes.addShaped(<contenttweaker:dark_block>, [[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>]]);
recipes.addShapeless(<contenttweaker:dark_ingot> * 9, [<contenttweaker:dark_block>]);

# Energized Dark Ingot & Block
recipes.addShaped(<contenttweaker:energized_dark_ingot> * 8, [[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<forge:bucketfilled>.withTag({FluidName: "refined_fuel", Amount: 1000}),<contenttweaker:dark_ingot>],[<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>,<contenttweaker:dark_ingot>]]);
recipes.addShapeless(<contenttweaker:energized_dark_ingot> * 9, [<contenttweaker:energized_dark_block>]);
recipes.addShaped(<contenttweaker:energized_dark_block>, [[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>,<contenttweaker:energized_dark_ingot>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_ingot>, <contenttweaker:dark_ingot>, <liquid:refined_fuel> * 100, 1000);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_block>, <contenttweaker:dark_block>, <liquid:refined_fuel> * 900, 9000);

# Titanium Nugget
recipes.addShapeless(<contenttweaker:titanium_nugget> * 9 , [<galacticraftplanets:item_basic_asteroids>]);
recipes.addShaped(<galacticraftplanets:item_basic_asteroids>, [[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>],[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>],[<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>,<contenttweaker:titanium_nugget>]]);

# Energized Dark Dust (Crushing recipes are in OreProcessingAdditions.zs)
recipes.addShaped(<contenttweaker:energized_dark_dust> * 8, [[<contenttweaker:dark_dust>,<contenttweaker:dark_dust>,<contenttweaker:dark_dust>],[<contenttweaker:dark_dust>,<forge:bucketfilled>.withTag({FluidName: "refined_fuel", Amount: 1000}),<contenttweaker:dark_dust>],[<contenttweaker:dark_dust>,<contenttweaker:dark_dust>,<contenttweaker:dark_dust>]]);
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:energized_dark_dust>, <contenttweaker:dark_dust>, <liquid:refined_fuel> * 100, 1000);

# Crystalline Brown Slime Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, null, 120, 240, [<industrialforegoing:fertilizer>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, [<enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>], 8000);
IEAlloySmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>, 300);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:crystalline_brown_slime_ingot> * 2, <enderio:item_alloy_endergy_ingot:4>, <industrialforegoing:fertilizer>, 8000);
recipes.addShaped(<contenttweaker:crystalline_brown_slime_block>, [[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>],[<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>,<contenttweaker:crystalline_brown_slime_ingot>]]);
recipes.addShapeless(<contenttweaker:crystalline_brown_slime_ingot> * 9, [<contenttweaker:crystalline_brown_slime_block>]);

# Glod Crystal & Block
mods.actuallyadditions.AtomicReconstructor.addRecipe(glod_crystal, <minecraft:gold_ingot>, 80);
mods.actuallyadditions.AtomicReconstructor.addRecipe(glod_crystal_block, <minecraft:gold_block>, 800);
recipes.addShaped(glod_crystal_block, [[glod_crystal,glod_crystal,glod_crystal],[glod_crystal,glod_crystal,glod_crystal],[glod_crystal,glod_crystal,glod_crystal]]);
recipes.addShapeless(glod_crystal * 9, [glod_crystal_block]);

# Empowered Glod Crystal & Block
mods.actuallyadditions.Empowerer.addRecipe(empowered_glod_crystal, glod_crystal, <enderio:item_material:12>, <thermalfoundation:material:294>, <roots:wildewheet>, <minecraft:blaze_rod>, 3000, 100, [0.976, 0.972, 0.184]);
recipes.addShaped(empowered_glod_crystal_block, [[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal],[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal],[empowered_glod_crystal,empowered_glod_crystal,empowered_glod_crystal]]);
recipes.addShapeless(empowered_glod_crystal * 9, [empowered_glod_crystal_block]);

# Crystal Bundle
mods.actuallyadditions.Empowerer.addRecipe(<contenttweaker:crystal_bundle>, empowered_glod_crystal, <actuallyadditions:item_crystal_empowered:2>, empowered_glod_crystal, <actuallyadditions:item_crystal_empowered:4>, empowered_glod_crystal, 6000, 160, [0.894, 0.933, 0.325]);

# Empowered Crystal Bundle
mods.actuallyadditions.Empowerer.addRecipe(<contenttweaker:empowered_crystal_bundle>, <contenttweaker:crystal_bundle>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, 8000, 200, [0.596, 0.835, 0.403]);

# Ingot & Block of Elevation
mods.actuallyadditions.AtomicReconstructor.addRecipe(<contenttweaker:ingot_of_elevation>, <contenttweaker:empowered_crystal_bundle>, 100000);
recipes.addShaped(<contenttweaker:block_of_elevation>, [[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>],[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>],[<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>,<contenttweaker:ingot_of_elevation>]]);
recipes.addShapeless(<contenttweaker:ingot_of_elevation> * 9, [<contenttweaker:block_of_elevation>]);

function addVetheaPlankRecipes(log as IItemStack, plank as IItemStack) {
	recipes.addShaped(plank * 4, [[log]]);
	mods.mekanism.sawmill.addRecipe(log, plank * 6, <thermalfoundation:material:800>, 1);
	mods.enderio.SagMill.addRecipe([<thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>, <thermalfoundation:material:800>], [100,90,50,10], log, "CHANCE_ONLY", 2400);
	mods.thermalexpansion.Sawmill.addRecipe(plank * 6, log, 1000, <thermalfoundation:material:800>, 100);
}

# Hyrewood Planks
addVetheaPlankRecipes(<divinerpg:hyrewood_log>, <contenttweaker:planks_hyrewood>);

# Mintwood Planks
addVetheaPlankRecipes(<divinerpg:mintwood_log>, <contenttweaker:planks_mintwood>);

# Firewood Planks
addVetheaPlankRecipes(<divinerpg:firewood_log>, <contenttweaker:planks_firewood>);

# Cosmic Alloy
recipes.addShaped(<contenttweaker:cosmic_alloy>, [[<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>],[<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>],[<mekanism:atomicalloy>,<contenttweaker:ingot_of_elevation>,<mekanism:atomicalloy>]]);

# Fluxed Electrum Ingot & Block
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:fluxed_electrum_ingot>, <thermalfoundation:material:161>, null, 120, 512, [<thermalfoundation:material:1024>, <enderio:item_alloy_ingot:3>], "Alloying");
EIOAlloySmelter.addRecipe(<contenttweaker:fluxed_electrum_ingot>, [<thermalfoundation:material:161>, <thermalfoundation:material:1024>, <enderio:item_alloy_ingot:3>], 16000);
recipes.addShaped(<contenttweaker:fluxed_electrum_block>, [[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>],[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>],[<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>]]);
recipes.addShapeless(<contenttweaker:fluxed_electrum_ingot> * 9, [<contenttweaker:fluxed_electrum_block>]);

# Fluxed Electrum Plate
recipes.addShapeless(<contenttweaker:fluxed_electrum_plate>, [<contenttweaker:iron_hammer>.anyDamage().transformDamage(1),<contenttweaker:fluxed_electrum_ingot>,<contenttweaker:fluxed_electrum_ingot>]);
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:fluxed_electrum_plate>, <contenttweaker:fluxed_electrum_ingot>, 3000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:fluxed_electrum_plate>, <contenttweaker:fluxed_electrum_ingot>, <immersiveengineering:mold>, 3000);

# Flux Crystal
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:flux_crystal>, <enderio:item_material:14>, <liquid:redstone> * 8000, 6400);

# Steaming Restonia Crystal & Block
mods.mekanism.reaction.addRecipe(<actuallyadditions:item_crystal_empowered>, <liquid:steam> * 1000, <gas:fusionfuel> * 240, <contenttweaker:steaming_restonia_crystal>, <gas:fusionfuel> * 180, 600, 80);
recipes.addShapeless(<contenttweaker:steaming_restonia_crystal> * 9, [<contenttweaker:steaming_restonia_crystal_block>]);
recipes.addShaped(<contenttweaker:steaming_restonia_crystal_block>, [[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>],[<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>,<contenttweaker:steaming_restonia_crystal>]]);

# Redstone Star
recipes.addShapedMirrored(<contenttweaker:redstone_star>, [[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],[<extrautils2:ingredients:4>,<extrautils2:endershard>,<contenttweaker:gp_powder>],[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]]);

# Unholy Token
recipes.addShaped(<contenttweaker:unholy_token>, [[<contenttweaker:ayeraco_wing>,<contenttweaker:eye_of_the_watcher>,<contenttweaker:ayeraco_wing>],[<contenttweaker:ayeraco_wing>,<contenttweaker:ancient_leg>,<contenttweaker:ayeraco_wing>],[null,<contenttweaker:ancient_leg>,null]]);

# Eden, Wildwood, Apalachia, Skythern & Mortum Door Key Tooltips
val divinerpg_keys = [<contenttweaker:eden_door_key>,<contenttweaker:wildwood_door_key>,<contenttweaker:apalachia_door_key>,<contenttweaker:skythern_door_key>,<contenttweaker:mortum_door_key>] as IItemStack[];
for i in 0 to 5 {
	divinerpg_keys[i].addTooltip(format.red("Right Click to clear any " + divinerpg_dimension_names_upper[i] + " Door Blocks in a 5 block radius."));
	divinerpg_keys[i].addTooltip(format.red("If none are found, it shows an error message in chat."));
}

# Dread Crystal
mods.abyssalcraft.InfusionRitual.addRitual("dread_crystal", 2, 2, 20000, false, <contenttweaker:dread_crystal>, <abyssalcraft:oc>, [<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>,<contenttweaker:steaming_restonia_crystal_block>,<abyssalcraft:ingotblock:2>]);
game.setLocalization("ac.ritual.dread_crystal", "Power of the Dread");
game.setLocalization("ac.ritual.dread_crystal.desc", "Convert the power of the Dreadlands into a single crystal!");

# Hardened Blood Droplet
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:hardened_blood_droplet>, <tconstruct:edible:3>, 0, 1000, 25, 25);

# Rainbow Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:rainbow_slate>, <bloodmagic:slate:4>, 5, 120000, 300, 250);

# Vibrant Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:vibrant_slate>, <contenttweaker:rainbow_slate>, 5, 300000, 400, 250);

# Perfect Slate
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:perfect_slate>, <contenttweaker:vibrant_slate>, 5, 1000000, 500, 250);

# Simple Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:simple_catalyst>, [<minecraft:glass_bottle>,<minecraft:redstone>,<minecraft:glowstone_dust>,<minecraft:gunpowder>,<minecraft:sugar>,<thermalfoundation:material:99>], 200, 20, 1);

# Aether
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aether>, [<contenttweaker:simple_catalyst>,<minecraft:ghast_tear>,<minecraft:glowstone_dust>,<aether_legacy:aerogel>,<roots:cloud_berry>,<minecraft:feather>], 1000, 100, 1);

# Aquasalus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:aquasalus>, [<contenttweaker:simple_catalyst>,<minecraft:water_bucket>,<minecraft:water_bucket>,<minecraft:dye>,<roots:dewgonia>,<minecraft:waterlily>], 1000, 100, 1);

# Incendium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:incendium>, [<contenttweaker:simple_catalyst>,<minecraft:lava_bucket>,<thermalfoundation:material:1024>,<thermalfoundation:material:1024>,<roots:infernal_bulb>,<minecraft:netherrack>], 1000, 100, 1);

# Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:terrae>, [<contenttweaker:simple_catalyst>,<extrautils2:compresseddirt>,<extrautils2:compressedsand>,<extrautils2:compressedgravel>,<minecraft:obsidian>,<roots:wildroot>], 1000, 100, 1);

# Strengthened Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:strengthened_catalyst>, [<contenttweaker:simple_catalyst>,<contenttweaker:simple_catalyst>,<mekanism:clump>,<mekanism:clump:4>,<thermalfoundation:material:2053>,<thermalfoundation:material:2053>], 1200, 100, 2);

# Sanctus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:sanctus>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aether>,glod_crystal,<thermalfoundation:glass_alloy:1>,<minecraft:glowstone>,<aether_legacy:holystone>], 3000, 100, 2);

# Crystallos
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crystallos>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:aquasalus>,<minecraft:packed_ice>,<minecraft:packed_ice>,<minecraft:snow>,<minecraft:snow>], 3000, 100, 2);

# Magicales
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:magicales>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:incendium>,<divinerpg:cyclops_eye_shards>,<divinerpg:ender_shards>,<draconicevolution:draconium_ingot>,<roots:pereskia>], 3000, 100, 2);

# Orbis Terrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:orbis_terrae>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:terrae>,<actuallyadditions:item_crystal:4>,<ore:ingotOsgloglas>,<natura:overworld_sapling2:2>,<natura:overworld_sapling2>], 3000, 100, 2);

# Coralium Decorated Blood Star
recipes.addShaped(<contenttweaker:coralium_decorated_blood_star>, [[<abyssalcraft:cingot>,<evilcraft:dark_power_gem>,<abyssalcraft:cingot>],[<evilcraft:dark_power_gem>,<evilcraft:blood_infusion_core>,<evilcraft:dark_power_gem>],[<abyssalcraft:cingot>,<evilcraft:dark_power_gem>,<abyssalcraft:cingot>]]);

# Concentrated Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:concentrated_catalyst>, [<contenttweaker:strengthened_catalyst>,<contenttweaker:strengthened_catalyst>,<mekanism:shard>,<mekanism:shard:4>,<contenttweaker:rf_powder>,<contenttweaker:rf_powder>], 4000, 160, 3);

# Crepitous
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:crepitous>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:terrae>,<contenttweaker:orbis_terrae>,<contenttweaker:mobgrindium_ingot>,<extrautils2:compressedcobblestone:1>,<enderio:item_material:20>], 8000, 160, 3);

# Tempestas
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tempestas>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:aether>,<contenttweaker:crystallos>,<evilcraft:weather_container>,<minecraft:double_plant>,<extrautils2:ingredients:3>], 8000, 160, 3);

# Offensa
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:offensa>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:magicales>,<enderio:item_dark_steel_sword>,<divinerpg:eden_arrow>,<minecraft:splash_potion>.withTag({Potion: "minecraft:strong_harming"})], 8000, 160, 3);

# Virtus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:virtus>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:incendium>,<contenttweaker:sanctus>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:5>], 8000, 160, 3);

# Intensive Catalyst
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:intensive_catalyst>, [<contenttweaker:concentrated_catalyst>,<contenttweaker:concentrated_catalyst>,<mekanism:crystal>,<mekanism:crystal:4>,<thermalfoundation:material:1028>,<thermalfoundation:material:1028>], 12000, 200, 4);

# Reductus
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:reductus>, [<contenttweaker:intensive_catalyst>,<contenttweaker:orbis_terrae>,<contenttweaker:magicales>,<actuallyadditions:item_crystal_empowered:4>,<alchemistry:ingot:3>,<enderutilities:enderpart:1>], 24000, 200, 4);

# Tenebrae
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:tenebrae>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:magicales>,<contenttweaker:compressed_obsidian2>,<enderio:block_alloy:6>,<ore:dyeBlack>], 24000, 200, 4);

# Praesidium
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:praesidium>, [<contenttweaker:intensive_catalyst>,<contenttweaker:crepitous>,<contenttweaker:sanctus>,<minecraft:splash_potion>.withTag({Potion: "minecraft:long_strength"}),<abyssalcraft:coraliumstone>,<thermalfoundation:glass_alloy:2>], 24000, 200, 4);

# Potentia
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:potentia>, [<contenttweaker:intensive_catalyst>,<contenttweaker:tempestas>,<contenttweaker:magicales>,<minecraft:lapis_block>,<draconicevolution:potentiometer>,<divinerpg:aqua_ball>], 24000, 200, 4);

# Frozen Blood Core
recipes.addShaped(<contenttweaker:frozen_blood_core>, [[<contenttweaker:icy_core>,<evilcraft:undead_log>,<contenttweaker:icy_core>],[<evilcraft:undead_log>,<evilcraft:promise_acceptor>,<evilcraft:undead_log>],[<contenttweaker:icy_core>,<evilcraft:undead_log>,<contenttweaker:icy_core>]]);

# Blood Infused Leather
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_infused_leather>, <contenttweaker:industrial_leather>, 2, 8000, 50, 50);
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:industrial_leather>, <liquid:evilcraftblood> * 8000, 1, <contenttweaker:blood_infused_leather>, 160, 0);

# Dirty Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:dirty_reagent>, [<minecraft:dirt:1>,<roots:elemental_soil_air>,<roots:elemental_soil_water>,<roots:elemental_soil_fire>], 32, 12);

# Wizard's Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:wizards_reagent>, [<ebwizardry:magic_crystal>,<bewitchment:garnet>,<bewitchment:opal>,<thaumcraft:amber>], 16, 6);

# Neutral Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:neutral_reagent>, [<minecraft:clay>,<minecraft:quartz_block>,<minecraft:concrete:8>,<minecraft:glass>], 80, 40);

# Tempest Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:tempest_reagent>, [<extrautils2:passivegenerator:4>,<totemic:wind_chime>,<minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),<mekanism:speedupgrade>], 80, 40);

# Damage Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:damage_reagent>, [<abyssalcraft:dreadiumsword>,<spartanshields:shield_abyssalcraft_dreadium>,<minecraft:potion>.withTag({Potion: "cofhcore:harming4"}),<minecraft:lava_bucket>], 80, 40);

# Strength Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:strength_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:strength4"}),<immersiveengineering:toolupgrade:12>,<contenttweaker:steaming_restonia_crystal>,<quantumflux:craftingpiece:2>], 80, 40);

# Potent Reagent
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:potent_reagent>, [<minecraft:potion>.withTag({Potion: "cofhcore:absorption4"}),<actuallyadditions:item_crystal_empowered:1>,<appliedenergistics2:material:12>,<thermalfoundation:material:514>], 200, 100);

# Empty Core
recipes.addShaped(<contenttweaker:empty_core>, [[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>],[<contenttweaker:simple_catalyst>,<enderio:item_material:14>,<contenttweaker:simple_catalyst>],[<thermalfoundation:glass:7>,<contenttweaker:simple_catalyst>,<thermalfoundation:glass:7>]]);

# Function to add custom Blood Magic Cores
function addCustomBloodMagicCore(core as IItemStack, essence as IIngredient, reagent as IIngredient, blood_orb as IIngredient) {
	recipes.addShaped(core, [[essence,reagent,essence],[reagent,<contenttweaker:empty_core>,reagent],[essence,blood_orb,essence]]);
}

# Gusty Core
addCustomBloodMagicCore(<contenttweaker:gusty_core>, <contenttweaker:aether>, <bloodmagic:component:2>, blood_orb_at_least_tier_1);

# Aquatic Core
addCustomBloodMagicCore(<contenttweaker:aquatic_core>, <contenttweaker:aquasalus>, <bloodmagic:component>, blood_orb_at_least_tier_1);

# Cire Core
addCustomBloodMagicCore(<contenttweaker:fire_core>, <contenttweaker:incendium>, <bloodmagic:component:1>, blood_orb_at_least_tier_1);

# Earthen Core
addCustomBloodMagicCore(<contenttweaker:earthen_core>, <contenttweaker:terrae>, <contenttweaker:dirty_reagent>, blood_orb_at_least_tier_1);

# Holy Core
addCustomBloodMagicCore(<contenttweaker:holy_core>, <contenttweaker:sanctus>, <bloodmagic:component:13>, blood_orb_at_least_tier_2);

# Magical Core
addCustomBloodMagicCore(<contenttweaker:magical_core>, <contenttweaker:magicales>, <contenttweaker:wizards_reagent>, blood_orb_at_least_tier_2);

# Icy Core
addCustomBloodMagicCore(<contenttweaker:icy_core>, <contenttweaker:crystallos>, <bloodmagic:component:32>, blood_orb_at_least_tier_2);

# Environmental Core
addCustomBloodMagicCore(<contenttweaker:environmental_core>, <contenttweaker:orbis_terrae>, <bloodmagic:component:5>, blood_orb_at_least_tier_2);

# Defensive Core
addCustomBloodMagicCore(<contenttweaker:defensive_core>, <contenttweaker:crepitous>, <contenttweaker:neutral_reagent>, blood_orb_at_least_tier_3);

# Tempest Core
addCustomBloodMagicCore(<contenttweaker:tempest_core>, <contenttweaker:tempestas>, <contenttweaker:tempest_reagent>, blood_orb_at_least_tier_3);

# Offensive Core
addCustomBloodMagicCore(<contenttweaker:offensive_core>, <contenttweaker:offensa>, <contenttweaker:damage_reagent>, blood_orb_at_least_tier_3);

# Power Core
addCustomBloodMagicCore(<contenttweaker:power_core>, <contenttweaker:virtus>, <contenttweaker:strength_reagent>, blood_orb_at_least_tier_3);

# Reduction Core
addCustomBloodMagicCore(<contenttweaker:reduction_core>, <contenttweaker:reductus>, <bloodmagic:component:31>, blood_orb_at_least_tier_4);

# Dark Core
addCustomBloodMagicCore(<contenttweaker:dark_core>, <contenttweaker:tenebrae>, <bloodmagic:component:4>, blood_orb_at_least_tier_4);

# Suppression Core
addCustomBloodMagicCore(<contenttweaker:suppression_core>, <contenttweaker:praesidium>, <bloodmagic:component:9>, blood_orb_at_least_tier_4);

# Potency Core
addCustomBloodMagicCore(<contenttweaker:potency_core>, <contenttweaker:potentia>, <contenttweaker:potent_reagent>, blood_orb_at_least_tier_4);

# Unholy Essence
<contenttweaker:unholy_essence>.addTooltip(format.yellow("Found in Eden Dungeons."));

# Feather of the Wild Woods
<contenttweaker:feather_of_the_wild_woods>.addTooltip(format.blue("Found in Wildwood Dungeons."));

# Bloodied Dust
mods.evilcraft.BloodInfuser.addRecipe(<evilcraft:dull_dust>, <liquid:evilcraftblood> * 10000, 2, <contenttweaker:bloodied_dust>, 100, 0);

# Cracked Runic Plate
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:cracked_runic_plate>, [<bloodmagic:slate:2>,<bloodmagic:slate:2>,<contenttweaker:concentrated_catalyst>,<contenttweaker:concentrated_catalyst>,<contenttweaker:defensive_core>,<contenttweaker:offensive_core>], 10000, 400, 3);

# Clean Runic Plate
mods.evilcraft.BloodInfuser.addRecipe(<contenttweaker:cracked_runic_plate>, <liquid:evilcraftblood> * 200000, 3, <contenttweaker:clean_runic_plate>, 400, 0);

print("ENDING ContentTweakerRecipes.zs");