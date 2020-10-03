# Author: Atricos

import mods.thermalexpansion.Transposer;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;

print("STARTING ThermalExpansion.zs");

# Redstone Servo
recipes.remove(<thermalfoundation:material:512>);
recipes.addShaped(<thermalfoundation:material:512>, [[<minecraft:redstone>,<thermalfoundation:material:160>,<minecraft:redstone>],[null,<thermalfoundation:material:160>,null],[<minecraft:redstone>,<thermalfoundation:material:160>,<minecraft:redstone>]]);

# Portable Tank
recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), [[null,<thermalfoundation:material:320>,null],[<thermalfoundation:material:320>,<ore:blockGlass>,<thermalfoundation:material:320>],[<minecraft:dye:4>,<thermalfoundation:material:512>,<minecraft:dye:4>]]);

# Machine Frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [[<tconstruct:materials>,<thermalfoundation:material:257>,<tconstruct:materials>],[<contenttweaker:rf_powder>,<extrautils2:machine>.withTag(null),<contenttweaker:rf_powder>],[<tconstruct:materials>,<thermalfoundation:material:257>,<tconstruct:materials>]]);
recipes.addShaped(<thermalexpansion:frame>, [[<tconstruct:materials>,<contenttweaker:rf_powder>,<tconstruct:materials>],[<thermalfoundation:material:257>,<extrautils2:machine>.withTag(null),<thermalfoundation:material:257>],[<tconstruct:materials>,<contenttweaker:rf_powder>,<tconstruct:materials>]]);

# Redstone Furnace
val redstone_furnace = <thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(redstone_furnace);
recipes.addShaped(redstone_furnace, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:furnace>,<thermalexpansion:frame>,<minecraft:furnace>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Pulverizer
val pulverizer = <thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(pulverizer);
recipes.addShaped(pulverizer, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<betternether:cincinnasite_forged>,<thermalexpansion:frame>,<betternether:cincinnasite_forged>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Sawmill
val sawmill = <thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(sawmill);
recipes.addShaped(sawmill, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<thermalfoundation:material:657>,<thermalexpansion:frame>,<thermalfoundation:material:657>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Induction Smelter
val induction_smelter = <thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(induction_smelter);
recipes.addShaped(induction_smelter, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<thermalfoundation:material:290>,<thermalexpansion:frame>,<thermalfoundation:material:290>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Compactor
val compactor = <thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(compactor);
recipes.addShaped(compactor, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:piston>,<thermalexpansion:frame>,<minecraft:piston>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Magma Crucible
val magma_crucible = <thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(magma_crucible);
recipes.addShaped(magma_crucible, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:nether_brick>,<thermalexpansion:frame>,<minecraft:nether_brick>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Fractionating Still
val fractionating_still = <thermalexpansion:machine:7>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 2, 3, 3, 3, 3] as byte[] as byte[], Level: 0 as byte});
recipes.remove(fractionating_still);
recipes.addShaped(fractionating_still, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<thermalfoundation:material:261>,<thermalexpansion:frame>,<thermalfoundation:material:261>],[<thermalfoundation:material:292>,<thermalfoundation:material:513>,<thermalfoundation:material:292>]]);

# Fluid Transposer
val fluid_transposer = <thermalexpansion:machine:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(fluid_transposer);
recipes.addShaped(fluid_transposer, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:bucket>,<thermalexpansion:frame>,<minecraft:bucket>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Energetic Infuser
val energetic_infuser = <thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(energetic_infuser);
recipes.addShaped(energetic_infuser, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<thermalfoundation:material:514>,<thermalexpansion:frame>,<thermalfoundation:material:514>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Centrifugal Separator
val centrifugal_separator = <thermalexpansion:machine:10>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(centrifugal_separator);
recipes.addShaped(centrifugal_separator, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:compass>.withTag({"quark:compass_calculated": 1 as byte, "quark:compass_in_nether": 0 as byte}),<thermalexpansion:frame>,<minecraft:compass>.withTag({"quark:compass_calculated": 1 as byte, "quark:compass_in_nether": 0 as byte})],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Sequential Fabricator
val sequential_fabricator = <thermalexpansion:machine:11>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(sequential_fabricator);
recipes.addShaped(sequential_fabricator, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<ore:workbench>,<thermalexpansion:frame>,<ore:workbench>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Alchemical Imbuer
val alchemical_imbuer = <thermalexpansion:machine:12>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(alchemical_imbuer);
recipes.addShaped(alchemical_imbuer, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:brewing_stand>,<thermalexpansion:frame>,<minecraft:brewing_stand>],[<thermalfoundation:material:292>,<thermalfoundation:material:513>,<thermalfoundation:material:292>]]);

# Arcane Ensorcellator
val arcane_ensorcellator = <thermalexpansion:machine:13>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(arcane_ensorcellator);
recipes.addShaped(arcane_ensorcellator, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:enchanting_table>,<thermalexpansion:frame>,<minecraft:enchanting_table>],[<thermalfoundation:material:292>,<thermalfoundation:material:513>,<thermalfoundation:material:292>]]);

# Glacial Precipitator
val glacial_precipitator = <thermalexpansion:machine:14>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(glacial_precipitator);
recipes.addShaped(glacial_precipitator, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<minecraft:packed_ice>,<thermalexpansion:frame>,<minecraft:packed_ice>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Igneous Extruder
val igneous_extruder = <thermalexpansion:machine:15>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});
recipes.remove(igneous_extruder);
recipes.addShaped(igneous_extruder, [[<thermalfoundation:material:321>,<thermalfoundation:material:321>,<thermalfoundation:material:321>],[<contenttweaker:compressed_obsidian1>,<thermalexpansion:frame>,<contenttweaker:compressed_obsidian1>],[<thermalfoundation:material:256>,<thermalfoundation:material:513>,<thermalfoundation:material:256>]]);

# Device Frame
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [[<thermalfoundation:material:321>,<ore:blockGlassHardened>,<thermalfoundation:material:321>],[<thermalfoundation:material:262>,<thermalexpansion:frame>,<thermalfoundation:material:262>],[<thermalfoundation:material:321>,<ore:blockGlassHardened>,<thermalfoundation:material:321>]]);
recipes.addShaped(<thermalexpansion:frame:64>, [[<thermalfoundation:material:321>,<thermalfoundation:material:262>,<thermalfoundation:material:321>],[<ore:blockGlassHardened>,<thermalexpansion:frame>,<ore:blockGlassHardened>],[<thermalfoundation:material:321>,<thermalfoundation:material:262>,<thermalfoundation:material:321>]]);

# Aqueous Accumulator
val aqueous_accumulator = <thermalexpansion:device>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 0, 0, 0, 0] as byte[] as byte[]});
recipes.remove(aqueous_accumulator);
recipes.addShaped(aqueous_accumulator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<minecraft:bucket>,<thermalexpansion:frame:64>,<minecraft:bucket>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Nullifier
val nullifier = <thermalexpansion:device:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 1, 1, 1, 1] as byte[] as byte[]});
recipes.remove(nullifier);
recipes.addShaped(nullifier, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<ore:cobblestone>,<thermalexpansion:frame:64>,<ore:cobblestone>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Thermal Mediator
val thermal_mediator = <thermalexpansion:device:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 1, 1, 1, 1] as byte[] as byte[]});
recipes.remove(thermal_mediator);
recipes.addShaped(thermal_mediator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<thermalfoundation:material:290>,<thermalexpansion:frame:64>,<thermalfoundation:material:290>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Arboreal Extractor
val arboreal_extractor = <thermalexpansion:device:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[]});
recipes.remove(arboreal_extractor);
recipes.addShaped(arboreal_extractor, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<ore:plankTreatedWood>,<thermalexpansion:frame:64>,<ore:plankTreatedWood>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Aquatic Entangler
val aquatic_entangler = <thermalexpansion:device:4>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[]});
recipes.remove(aquatic_entangler);
recipes.addShaped(aquatic_entangler, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<thermalfoundation:tool.fishing_rod_diamond>,<thermalexpansion:frame:64>,<thermalfoundation:tool.fishing_rod_diamond>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Item Allocator
val item_allocator = <thermalexpansion:device:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[]});
recipes.remove(item_allocator);
recipes.addShaped(item_allocator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<thermalfoundation:material:257>,<thermalexpansion:frame:64>,<thermalfoundation:material:257>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Fluid Allocator
val fluid_allocator = <thermalexpansion:device:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[]});
recipes.remove(fluid_allocator);
recipes.addShaped(fluid_allocator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<thermalfoundation:material:256>,<thermalexpansion:frame:64>,<thermalfoundation:material:256>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Insightful Condenser
val insightful_condenser = <thermalexpansion:device:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[]});
recipes.remove(insightful_condenser);
recipes.addShaped(insightful_condenser, [[<thermalfoundation:material:323>,<thermalfoundation:tome_experience>,<thermalfoundation:material:323>],[<thermalfoundation:material:25>,<thermalexpansion:frame:64>,<thermalfoundation:material:25>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Decorative Diffuser
val decorative_diffuser = <thermalexpansion:device:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 1, 1, 1, 1] as byte[] as byte[]});
recipes.remove(decorative_diffuser);
recipes.addShaped(decorative_diffuser, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<minecraft:dragon_breath>,<thermalexpansion:frame:64>,<minecraft:dragon_breath>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Creature Encaptulator
val creature_encaptulator = <thermalexpansion:device:11>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[]});
recipes.remove(creature_encaptulator);
recipes.addShaped(creature_encaptulator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<thermalexpansion:morb>,<thermalexpansion:frame:64>,<thermalexpansion:morb>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Vacuumulator
val vacuumulator = <thermalexpansion:device:12>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 0, 0, 0, 0] as byte[] as byte[]});
recipes.remove(vacuumulator);
recipes.addShaped(vacuumulator, [[<thermalfoundation:material:323>,<thermalfoundation:material:323>,<thermalfoundation:material:323>],[<minecraft:hopper>,<thermalexpansion:frame:64>,<minecraft:hopper>],[<thermalfoundation:material:26>,<thermalfoundation:material:512>,<thermalfoundation:material:26>]]);

# Steam Dynamo
val steam_dynamo = <thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(steam_dynamo);
recipes.addShaped(steam_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:256>,<contenttweaker:rf_powder>,<thermalfoundation:material:256>]]);

# Magmatic Dynamo
val magmatic_dynamo = <thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(magmatic_dynamo);
recipes.addShaped(magmatic_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:290>,<contenttweaker:rf_powder>,<thermalfoundation:material:290>]]);

# Compression Dynamo
val compression_dynamo = <thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(compression_dynamo);
recipes.addShaped(compression_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:257>,<contenttweaker:rf_powder>,<thermalfoundation:material:257>]]);

# Reactant Dynamo
val reactant_dynamo = <thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(reactant_dynamo);
recipes.addShaped(reactant_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:259>,<contenttweaker:rf_powder>,<thermalfoundation:material:259>]]);

# Enervation Dynamo
val enervation_dynamo = <thermalexpansion:dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(enervation_dynamo);
recipes.addShaped(enervation_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:289>,<contenttweaker:rf_powder>,<thermalfoundation:material:289>]]);

# Numismatic Dynamo
val numismatic_dynamo = <thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte});
recipes.remove(numismatic_dynamo);
recipes.addShaped(numismatic_dynamo, [[null,<thermalfoundation:material:514>,null],[<thermalfoundation:material:352>,<extrautils2:machine>.withTag({Type: "extrautils2:generator"}),<thermalfoundation:material:352>],[<thermalfoundation:material:292>,<contenttweaker:rf_powder>,<thermalfoundation:material:292>]]);

# Energy Cell Frame
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [[<thermalfoundation:material:259>,<thermalfoundation:material:289>,<thermalfoundation:material:259>],[<thermalfoundation:material:289>,<contenttweaker:rf_powder>,<thermalfoundation:material:289>],[<thermalfoundation:material:259>,<thermalfoundation:material:289>,<thermalfoundation:material:259>]]);

# Energy Cell (Basic)
val energy_cell_basic = <thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000});
recipes.remove(energy_cell_basic);
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 1000, Level: 0 as byte, Send: 1000}), [[<thermalfoundation:material:323>,<minecraft:redstone_block>,<thermalfoundation:material:323>],[<thermalfoundation:material:515>,<thermalexpansion:frame:128>,<thermalfoundation:material:515>],[<thermalfoundation:material:323>,<minecraft:redstone_block>,<thermalfoundation:material:323>]]);
recipes.addShaped(energy_cell_basic, [[<thermalfoundation:material:323>,<minecraft:redstone_block>,<thermalfoundation:material:323>],[<thermalfoundation:material:515>,<thermalexpansion:frame:128>,<thermalfoundation:material:515>],[<thermalfoundation:material:323>,<minecraft:redstone_block>,<thermalfoundation:material:323>]]);

# Cache (Basic)
val cache_basic = <thermalexpansion:cache>.withTag({Facing: 3 as byte, Level: 0 as byte});
recipes.remove(cache_basic);
recipes.addShaped(cache_basic, [[<thermalfoundation:material:352>,<ore:drawerBasic>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<contenttweaker:rf_powder>,<thermalfoundation:material:352>]]);

# Strongbox (Basic)
val strongbox_basic = <thermalexpansion:strongbox>.withTag({Facing: 3 as byte, Level: 0 as byte});
recipes.remove(strongbox_basic);
recipes.addShaped(strongbox_basic, [[null,<thermalfoundation:material:321>,null],[<thermalfoundation:material:321>,<ore:chestWood>,<thermalfoundation:material:321>],[null,<contenttweaker:rf_powder>,null]]);

# Flux Capacitor (Basic)
recipes.removeShaped(<thermalexpansion:capacitor>);
recipes.addShaped(<thermalexpansion:capacitor>.withTag({Energy: 0}), [[<ore:ingotRedAlloy>,<thermalfoundation:material:771>,<ore:ingotRedAlloy>],[<thermalfoundation:material:323>,<contenttweaker:rf_powder>,<thermalfoundation:material:323>],[<thermalfoundation:material:323>,<ore:ingotRedAlloy>,<thermalfoundation:material:323>]]);

# Flux Capacitor (Hardened)
recipes.removeShaped(<thermalexpansion:capacitor:1>);
recipes.addShaped("thermal_capacitor_upgrade1", <thermalexpansion:capacitor:1>.withTag({Energy: 0}), [[<ore:ingotRedAlloy>,<thermalfoundation:material:257>,<ore:ingotRedAlloy>],[<thermalfoundation:material:354>,<thermalexpansion:capacitor>.marked("capacitor"),<thermalfoundation:material:354>],[<thermalfoundation:material:354>,<ore:ingotRedAlloy>,<thermalfoundation:material:354>]],
	function(out, ins, cInfo) { return out.withTag(ins.capacitor.tag); }, null);

# Flux Capacitor (Reinforced)
recipes.removeShaped(<thermalexpansion:capacitor:2>);
recipes.addShaped("thermal_capacitor_upgrade2", <thermalexpansion:capacitor:2>.withTag({Energy: 0}), [[<ore:ingotRedAlloy>,<ore:blockGlassHardened>,<ore:ingotRedAlloy>],[<thermalfoundation:material:353>,<thermalexpansion:capacitor:1>.marked("capacitor"),<thermalfoundation:material:353>],[<thermalfoundation:material:353>,<ore:ingotRedAlloy>,<thermalfoundation:material:353>]],
	function(out, ins, cInfo) { return out.withTag(ins.capacitor.tag); }, null);

# Flux Capacitor (Signalum)
recipes.removeShaped(<thermalexpansion:capacitor:3>);
recipes.addShaped("thermal_capacitor_upgrade3", <thermalexpansion:capacitor:3>.withTag({Energy: 0}), [[<ore:ingotRedAlloy>,<thermalfoundation:material:1025>,<ore:ingotRedAlloy>],[<thermalfoundation:material:357>,<thermalexpansion:capacitor:2>.marked("capacitor"),<thermalfoundation:material:357>],[<thermalfoundation:material:357>,<ore:ingotRedAlloy>,<thermalfoundation:material:357>]],
	function(out, ins, cInfo) { return out.withTag(ins.capacitor.tag); }, null);

# Flux Capacitor (Enderium)
recipes.removeShaped(<thermalexpansion:capacitor:4>);
recipes.addShaped("thermal_capacitor_upgrade4", <thermalexpansion:capacitor:4>.withTag({Energy: 0}), [[<ore:ingotRedAlloy>,<thermalfoundation:material:1024>,<ore:ingotRedAlloy>],[<thermalfoundation:material:359>,<thermalexpansion:capacitor:3>.marked("capacitor"),<thermalfoundation:material:359>],[<thermalfoundation:material:359>,<ore:ingotRedAlloy>,<thermalfoundation:material:359>]],
	function(out, ins, cInfo) { return out.withTag(ins.capacitor.tag); }, null);

# Reservoir (Basic)
recipes.removeShaped(<thermalexpansion:reservoir>);
recipes.addShaped(<thermalexpansion:reservoir>.withTag({}), [[null,<thermalfoundation:material:321>,null],[<thermalfoundation:material:320>,<contenttweaker:rf_powder>,<thermalfoundation:material:320>],[null,<thermalfoundation:material:512>,null]]);

# Reservoir (Hardened)
recipes.removeShaped(<thermalexpansion:reservoir:1>);
recipes.addShaped("thermal_reservoir_upgrade1", <thermalexpansion:reservoir:1>.withTag({}), [[null,<ore:blockGlassHardened>,null],[<thermalfoundation:material:354>,<thermalexpansion:reservoir>.marked("reservoir"),<thermalfoundation:material:354>],[null,<thermalfoundation:material:257>,null]],
	function(out, ins, cInfo) { return out.withTag(ins.reservoir.tag); }, null);

# Reservoir (Reinforced)
recipes.removeShaped(<thermalexpansion:reservoir:2>);
recipes.addShaped("thermal_reservoir_upgrade2", <thermalexpansion:reservoir:2>.withTag({}), [[null,<ore:blockGlassHardened>,null],[<thermalfoundation:material:353>,<thermalexpansion:reservoir:1>.marked("reservoir"),<thermalfoundation:material:353>],[null,<thermalfoundation:material:290>,null]],
	function(out, ins, cInfo) { return out.withTag(ins.reservoir.tag); }, null);

# Reservoir (Reinforced)
recipes.removeShaped(<thermalexpansion:reservoir:3>);
recipes.addShaped("thermal_reservoir_upgrade3", <thermalexpansion:reservoir:3>.withTag({}), [[null,<thermalfoundation:material:1025>,null],[<thermalfoundation:material:357>,<thermalexpansion:reservoir:2>.marked("reservoir"),<thermalfoundation:material:357>],[null,<thermalfoundation:material:289>,null]],
	function(out, ins, cInfo) { return out.withTag(ins.reservoir.tag); }, null);

# Reservoir (Resonant)
recipes.removeShaped(<thermalexpansion:reservoir:4>);
recipes.addShaped("thermal_reservoir_upgrade4", <thermalexpansion:reservoir:4>.withTag({}), [[null,<thermalfoundation:material:1024>,null],[<thermalfoundation:material:359>,<thermalexpansion:reservoir:3>.marked("reservoir"),<thermalfoundation:material:359>],[null,<thermalfoundation:material:293>,null]],
	function(out, ins, cInfo) { return out.withTag(ins.reservoir.tag); }, null);

# Satchel (Basic)
recipes.removeShaped(<thermalexpansion:satchel>);
recipes.addShaped(<thermalexpansion:satchel>.withTag({Inventory: {}, Accessible: 1 as byte}), [[null,<thermalfoundation:material:321>,null],[<contenttweaker:treated_leather>,<minecraft:chest>,<contenttweaker:treated_leather>],[null,<thermalfoundation:material:321>,null]]);

# Satchel (Hardened)
recipes.removeShaped(<thermalexpansion:satchel:1>);
recipes.addShaped("thermal_satchel_upgrade1", <thermalexpansion:satchel:1>.withTag({Accessible: 1 as byte}), [[null,<thermalfoundation:material:354>,null],[<contenttweaker:treated_leather>,<thermalexpansion:satchel>.marked("satchel"),<contenttweaker:treated_leather>],[null,<thermalfoundation:material:354>,null]],
	function(out, ins, cInfo) { return out.withTag(ins.satchel.tag); }, null);

# Satchel (Reinforced)
recipes.removeShaped(<thermalexpansion:satchel:2>);
recipes.addShaped("thermal_satchel_upgrade2", <thermalexpansion:satchel:2>.withTag({Accessible: 1 as byte}), [[<thermalfoundation:material:354>,<thermalfoundation:material:353>,<thermalfoundation:material:354>],[<contenttweaker:treated_leather>,<thermalexpansion:satchel:1>.marked("satchel"),<contenttweaker:treated_leather>],[<thermalfoundation:material:354>,<thermalfoundation:material:353>,<thermalfoundation:material:354>]],
	function(out, ins, cInfo) { return out.withTag(ins.satchel.tag); }, null);

# Satchel (Signalum)
recipes.removeShaped(<thermalexpansion:satchel:3>);
recipes.addShaped("thermal_satchel_upgrade3", <thermalexpansion:satchel:3>.withTag({Accessible: 1 as byte}), [[<thermalfoundation:material:353>,<thermalfoundation:material:357>,<thermalfoundation:material:353>],[<contenttweaker:treated_leather>,<thermalexpansion:satchel:2>.marked("satchel"),<contenttweaker:treated_leather>],[<thermalfoundation:material:353>,<thermalfoundation:material:357>,<thermalfoundation:material:353>]],
	function(out, ins, cInfo) { return out.withTag(ins.satchel.tag); }, null);

# Satchel (Resonant)
recipes.removeShaped(<thermalexpansion:satchel:4>);
recipes.addShaped("thermal_satchel_upgrade4", <thermalexpansion:satchel:4>.withTag({Accessible: 1 as byte}), [[<thermalfoundation:material:357>,<thermalfoundation:material:359>,<thermalfoundation:material:357>],[<contenttweaker:treated_leather>,<thermalexpansion:satchel:3>.marked("satchel"),<contenttweaker:treated_leather>],[<thermalfoundation:material:357>,<thermalfoundation:material:359>,<thermalfoundation:material:357>]],
	function(out, ins, cInfo) { return out.withTag(ins.satchel.tag); }, null);

# Satchel (Void)
recipes.remove(<thermalexpansion:satchel:100>);
recipes.addShaped(<thermalexpansion:satchel:100>.withTag({Accessible: 1 as byte}), [[null,<contenttweaker:industrial_leather>,null],[<thermalfoundation:material:323>,<extrautils2:trashcan>,<thermalfoundation:material:323>],[<contenttweaker:industrial_leather>,<thermalfoundation:material:323>,<contenttweaker:industrial_leather>]]);

# Hardened Energy Cell Frame
recipes.addShaped(<thermalexpansion:frame:129>, [[<thermalfoundation:material:290>,<thermalfoundation:material:289>,<thermalfoundation:material:290>],[<thermalfoundation:material:289>,<contenttweaker:rf_powder>,<thermalfoundation:material:289>],[<thermalfoundation:material:290>,<thermalfoundation:material:289>,<thermalfoundation:material:290>]]);

# Reinforced Energy Cell Frame (Empty)
recipes.addShaped(<thermalexpansion:frame:130>, [[<thermalfoundation:material:289>,<thermalfoundation:glass_alloy:1>,<thermalfoundation:material:289>],[<thermalfoundation:glass_alloy:1>,<contenttweaker:rf_powder>,<thermalfoundation:glass_alloy:1>],[<thermalfoundation:material:289>,<thermalfoundation:glass_alloy:1>,<thermalfoundation:material:289>]]);

# Reinforced Energy Cell Frame (Full)
mods.thermalexpansion.Transposer.addFillRecipe(<thermalexpansion:frame:146>, <thermalexpansion:frame:130>, <liquid:redstone> * 2400, 4800);

# Signalum Energy Cell Frame (Empty)
recipes.addShaped(<thermalexpansion:frame:131>, [[<thermalfoundation:material:293>,<thermalfoundation:glass_alloy:5>,<thermalfoundation:material:293>],[<thermalfoundation:glass_alloy:5>,<contenttweaker:rf_powder>,<thermalfoundation:glass_alloy:5>],[<thermalfoundation:material:293>,<thermalfoundation:glass_alloy:5>,<thermalfoundation:material:293>]]);

# Signalum Energy Cell Frame (Full)
mods.thermalexpansion.Transposer.addFillRecipe(<thermalexpansion:frame:147>, <thermalexpansion:frame:131>, <liquid:redstone> * 3200, 6400);

# Resonant Energy Cell Frame (Empty)
recipes.addShaped(<thermalexpansion:frame:132>, [[<thermalfoundation:material:295>,<thermalfoundation:glass_alloy:7>,<thermalfoundation:material:295>],[<thermalfoundation:glass_alloy:7>,<contenttweaker:rf_powder>,<thermalfoundation:glass_alloy:7>],[<thermalfoundation:material:295>,<thermalfoundation:glass_alloy:7>,<thermalfoundation:material:295>]]);

# Resonant Energy Cell Frame (Full)
mods.thermalexpansion.Transposer.addFillRecipe(<thermalexpansion:frame:148>, <thermalexpansion:frame:132>, <liquid:redstone> * 4800, 8000);

# Energy Cell (Hardened)
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 4000, Level: 1 as byte, Send: 4000}), [[<thermalfoundation:material:354>,<minecraft:redstone_block>,<thermalfoundation:material:354>],[<thermalfoundation:material:515>,<thermalexpansion:frame:129>,<thermalfoundation:material:515>],[<thermalfoundation:material:354>,<minecraft:redstone_block>,<thermalfoundation:material:354>]]);

# Energy Cell (Reinforced)
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 9000, Level: 2 as byte, Send: 9000}), [[<thermalfoundation:material:353>,<minecraft:redstone_block>,<thermalfoundation:material:353>],[<thermalfoundation:material:515>,<thermalexpansion:frame:146>,<thermalfoundation:material:515>],[<thermalfoundation:material:353>,<minecraft:redstone_block>,<thermalfoundation:material:353>]]);

# Energy Cell (Signalum)
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 16000, Level: 3 as byte, Send: 16000}), [[<thermalfoundation:material:357>,<minecraft:redstone_block>,<thermalfoundation:material:357>],[<thermalfoundation:material:515>,<thermalexpansion:frame:147>,<thermalfoundation:material:515>],[<thermalfoundation:material:357>,<minecraft:redstone_block>,<thermalfoundation:material:357>]]);

# Energy cell (Resonant)
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 25000, Level: 4 as byte, Send: 25000}), [[<thermalfoundation:material:359>,<minecraft:redstone_block>,<thermalfoundation:material:359>],[<thermalfoundation:material:515>,<thermalexpansion:frame:148>,<thermalfoundation:material:515>],[<thermalfoundation:material:359>,<minecraft:redstone_block>,<thermalfoundation:material:359>]]);

# Portable Tank (Hardened)
recipes.addShapeless("thermal_tank_upgrade1", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}).marked("tank"),<thermalfoundation:upgrade>],
	function(out, ins, cInfo) { 
	if(ins.tank.tag has "Fluid") {
		return out.withTag({RSControl: 0 as byte, Fluid: ins.tank.tag.Fluid, Level: 1 as byte});
	} else {
		return out.withTag({RSControl: 0 as byte, Level: 1 as byte});
	}}, null);

# Portable Tank (Reinforced)
recipes.addShapeless("thermal_tank_upgrade2", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 1 as byte}).marked("tank"),<thermalfoundation:upgrade:1>],
	function(out, ins, cInfo) { 
	if(ins.tank.tag has "Fluid") {
		return out.withTag({RSControl: 0 as byte, Fluid: ins.tank.tag.Fluid, Level: 2 as byte});
	} else {
		return out.withTag({RSControl: 0 as byte, Level: 2 as byte});
	}}, null);

# Portable Tank (Signalum)
recipes.addShapeless("thermal_tank_upgrade3", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 2 as byte}).marked("tank"),<thermalfoundation:upgrade:2>],
	function(out, ins, cInfo) { 
	if(ins.tank.tag has "Fluid") {
		return out.withTag({RSControl: 0 as byte, Fluid: ins.tank.tag.Fluid, Level: 3 as byte});
	} else {
		return out.withTag({RSControl: 0 as byte, Level: 3 as byte});
	}}, null);

# Portable Tank (Resonant)
recipes.addShapeless("thermal_tank_upgrade4", <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 4 as byte}), [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 3 as byte}).marked("tank"),<thermalfoundation:upgrade:3>],
	function(out, ins, cInfo) { 
	if(ins.tank.tag has "Fluid") {
		return out.withTag({RSControl: 0 as byte, Fluid: ins.tank.tag.Fluid, Level: 4 as byte});
	} else {
		return out.withTag({RSControl: 0 as byte, Level: 4 as byte});
	}}, null);

# Crescent Hammer
recipes.remove(<thermalfoundation:wrench>);
recipes.addShapedMirrored(<thermalfoundation:wrench>, [[null,<immersiveengineering:material:1>,null],[null,<thermalfoundation:material:257>,<immersiveengineering:material:1>],[<lightningcraft:rod:2>,null,null]]);

# Function to upgrade Caches and Strongboxes while keeping their contents, locked state, owner ID, etc.
function thermalUpgrade(input_tag as IData, out as IItemStack, new_level as byte) as IItemStack {
	val new_level_tag = {Level: new_level as byte} as IData;
	val new_tag = input_tag + new_level_tag;
	return out.withTag(new_tag);
}

# Cache (Hardened)
recipes.addShapeless("thermal_cache_upgrade1", <thermalexpansion:cache>.withTag({Level: 1 as byte}), [<thermalexpansion:cache>.withTag({Level: 0 as byte}).marked("cache"),<thermalfoundation:upgrade>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.cache.tag, out, 1); }, null);

# Cache (Reinforced)
recipes.addShapeless("thermal_cache_upgrade2", <thermalexpansion:cache>.withTag({Level: 2 as byte}), [<thermalexpansion:cache>.withTag({Level: 1 as byte}).marked("cache"),<thermalfoundation:upgrade:1>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.cache.tag, out, 2); }, null);

# Cache (Signalum)
recipes.addShapeless("thermal_cache_upgrade3", <thermalexpansion:cache>.withTag({Level: 3 as byte}), [<thermalexpansion:cache>.withTag({Level: 2 as byte}).marked("cache"),<thermalfoundation:upgrade:2>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.cache.tag, out, 3); }, null);

# Cache (Resonant)
recipes.addShapeless("thermal_cache_upgrade4", <thermalexpansion:cache>.withTag({Level: 4 as byte}), [<thermalexpansion:cache>.withTag({Level: 3 as byte}).marked("cache"),<thermalfoundation:upgrade:3>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.cache.tag, out, 4); }, null);

# Strongbox (Hardened)
recipes.addShapeless("thermal_strongbox_upgrade1", <thermalexpansion:strongbox>.withTag({Level: 1 as byte}), [<thermalexpansion:strongbox>.withTag({Level: 0 as byte}).marked("strongbox"),<thermalfoundation:upgrade>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.strongbox.tag, out, 1); }, null);

# Strongbox (Reinforced)
recipes.addShapeless("thermal_strongbox_upgrade2", <thermalexpansion:strongbox>.withTag({Level: 2 as byte}), [<thermalexpansion:strongbox>.withTag({Level: 1 as byte}).marked("strongbox"),<thermalfoundation:upgrade:1>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.strongbox.tag, out, 2); }, null);

# Strongbox (Signalum)
recipes.addShapeless("thermal_strongbox_upgrade3", <thermalexpansion:strongbox>.withTag({Level: 3 as byte}), [<thermalexpansion:strongbox>.withTag({Level: 2 as byte}).marked("strongbox"),<thermalfoundation:upgrade:2>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.strongbox.tag, out, 3); }, null);

# Strongbox (Resonant)
recipes.addShapeless("thermal_strongbox_upgrade4", <thermalexpansion:strongbox>.withTag({Level: 4 as byte}), [<thermalexpansion:strongbox>.withTag({Level: 3 as byte}).marked("strongbox"),<thermalfoundation:upgrade:3>],
	function(out, ins, cInfo) { return thermalUpgrade(ins.strongbox.tag, out, 4); }, null);

# Augment: Nullification Chamber
recipes.remove(<thermalexpansion:augment:130>);
recipes.addShaped(<thermalexpansion:augment:130>, [[null,<thermalfoundation:material:162>,null],[<thermalfoundation:material:162>,<minecraft:lava_bucket>.noReturn(),<thermalfoundation:material:162>],[null,<thermalfoundation:material:162>,null]]);

# Augment: Nutrient Recovery
recipes.remove(<thermalexpansion:augment:320>);

# Augment: Sapling Infuser
recipes.remove(<thermalexpansion:augment:323>);

# Augment: Monoculture Cycle
recipes.remove(<thermalexpansion:augment:324>);

# Augment: Flux Reconstruction
recipes.remove(<thermalexpansion:augment:401>);

# Augment: Parabolic Flux Coupling
recipes.remove(<thermalexpansion:augment:402>);
recipes.addShaped(<thermalexpansion:augment:402>, [[<thermalfoundation:material:322>,<thermalfoundation:material:295>,<thermalfoundation:material:322>],[<thermalfoundation:material:295>,<contenttweaker:rf_powder>,<thermalfoundation:material:295>],[<thermalfoundation:material:322>,<thermalfoundation:material:512>,<thermalfoundation:material:322>]]);

# Augment: Auxillary Transmission Coil
recipes.remove(<thermalexpansion:augment:512>);
recipes.addShaped(<thermalexpansion:augment:512>, [[<thermalfoundation:material:322>,<ore:ingotOsgloglas>,<thermalfoundation:material:322>],[<ore:ingotOsgloglas>,<thermalfoundation:material:514>,<ore:ingotOsgloglas>],[<thermalfoundation:material:322>,<ore:ingotOsgloglas>,<thermalfoundation:material:322>]]);

# Augment: Fuel Catalyzer
recipes.remove(<thermalexpansion:augment:513>);
recipes.addShaped(<thermalexpansion:augment:513>, [[<thermalfoundation:material:323>,<ore:ingotOsgloglas>,<thermalfoundation:material:323>],[<ore:ingotOsgloglas>,<thermalfoundation:material:515>,<ore:ingotOsgloglas>],[<thermalfoundation:material:323>,<ore:ingotOsgloglas>,<thermalfoundation:material:323>]]);

# Augment: Transmission Coil Ducting
recipes.remove(<thermalexpansion:augment:514>);
recipes.addShaped(<thermalexpansion:augment:514>, [[null,<thermalfoundation:material:131>,null],[<thermalfoundation:material:131>,<minecraft:hopper>,<thermalfoundation:material:131>],[null,<thermalfoundation:material:131>,null]]);

# Augment: Excitation Field Limiter
recipes.remove(<thermalexpansion:augment:515>);
recipes.addShaped(<thermalexpansion:augment:515>, [[<thermalfoundation:material:322>,<ore:ingotOsgloglas>,<thermalfoundation:material:322>],[<ore:ingotOsgloglas>,<thermalfoundation:material:161>,<ore:ingotOsgloglas>],[<thermalfoundation:material:322>,<ore:ingotOsgloglas>,<thermalfoundation:material:322>]]);

# Augment: Auxillary Reception Coil
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped(<thermalexpansion:augment:128>, [[<minecraft:gold_ingot>,<thermalfoundation:material:866>,<minecraft:gold_ingot>],[<thermalfoundation:material:866>,<thermalfoundation:material:513>,<thermalfoundation:material:866>],[<minecraft:gold_ingot>,<thermalfoundation:material:866>,<minecraft:gold_ingot>]]);

# Phytogenic Insolator tooltip
<thermalexpansion:machine:4>.addTooltip(format.red(format.bold("Machine disabled.")));

# Additional Enderium Ingot recipes
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:167>, <enderio:item_material:39>, <minecraft:sand:*>, 25000);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:167>, <minecraft:ender_pearl> * 4, null, 100, 80, [<thermalfoundation:material:131> * 3, <thermalfoundation:material:134>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:167>, <enderio:item_material:39>, null, 400, 512, [<minecraft:sand:*>], "Alloying");

# Additional Signalum Ingot recipes
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:165>, <thermalfoundation:material:128> * 3, null, 100, 512, [<thermalfoundation:material:130>, <minecraft:redstone> * 10], "Alloying");

# Augment: Tectonic Initiator
recipes.remove(<thermalexpansion:augment:273>);
recipes.addShaped(<thermalexpansion:augment:273>, [[<thermalfoundation:material:322>,<enderio:item_alloy_ingot:6>,<thermalfoundation:material:322>],[<enderio:item_alloy_ingot:6>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot:6>],[<thermalfoundation:material:322>,<enderio:item_alloy_ingot:6>,<thermalfoundation:material:322>]]);

# Augment: Pyro-Concentrator
recipes.remove(<thermalexpansion:augment:304>);
recipes.addShaped(<thermalexpansion:augment:304>, [[<thermalfoundation:material:322>,<enderio:item_alloy_ingot:1>,<thermalfoundation:material:322>],[<enderio:item_alloy_ingot:1>,<contenttweaker:cosmic_alloy>,<enderio:item_alloy_ingot:1>],[<thermalfoundation:material:322>,<enderio:item_alloy_ingot:1>,<thermalfoundation:material:322>]]);

print("ENDING ThermalExpansion.zs");