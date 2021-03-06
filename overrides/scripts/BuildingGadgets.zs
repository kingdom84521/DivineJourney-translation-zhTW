# Author: Atricos

import crafttweaker.data.IData;

print("STARTING BuildingGadgets.zs");

# Building Gadget
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>.withTag({blockstate: {Name: "minecraft:air"}}), [[<thermalfoundation:material:322>,<mekanism:controlcircuit:3>,<thermalfoundation:material:322>],[<appliedenergistics2:material:24>,<plustic:osgloglasblock>,<appliedenergistics2:material:24>],[<thermalfoundation:material:322>,<mekanism:controlcircuit:3>,<thermalfoundation:material:322>]]);

# Destruction Gadget
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped(<buildinggadgets:destructiontool>.withTag({overlay: 1 as byte, fuzzy: 1 as byte}), [[<thermalfoundation:material:359>,<mekanism:controlcircuit:3>,<thermalfoundation:material:359>],[<contenttweaker:estimation_processor>,<enderio:block_alloy:3>,<contenttweaker:estimation_processor>],[<thermalfoundation:material:359>,<mekanism:controlcircuit:3>,<thermalfoundation:material:359>]]);

# Exchanging Gadget
recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>.withTag({blockstate: {Name: "minecraft:air"}}), [[<thermalfoundation:material:327>,<contenttweaker:cosmic_alloy>,<thermalfoundation:material:327>],[<contenttweaker:methodology_processor>,<enderio:block_alloy:2>,<contenttweaker:methodology_processor>],[<thermalfoundation:material:327>,<contenttweaker:cosmic_alloy>,<thermalfoundation:material:327>]]);

# Copy-Paste Gadget
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>.withTag({mode: "Copy"}), [[<contenttweaker:defensive_core>,<bloodmagic:component:12>,<contenttweaker:defensive_core>],[<contenttweaker:clearance_processor>,<botania:storage:1>,<contenttweaker:clearance_processor>],[<contenttweaker:defensive_core>,<bloodmagic:component:12>,<contenttweaker:defensive_core>]]);

# Template Manager
recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped(<buildinggadgets:templatemanager>, [[<buildinggadgets:constructionblock_dense>,<contenttweaker:environmental_core>,<buildinggadgets:constructionblock_dense>],[<botania:storage:4>,<buildinggadgets:copypastetool>,<botania:storage:4>],[<buildinggadgets:constructionblock_dense>,<contenttweaker:environmental_core>,<buildinggadgets:constructionblock_dense>]]);

# Construction Block Powder
recipes.remove(<buildinggadgets:constructionblockpowder>);
recipes.addShaped(<buildinggadgets:constructionblockpowder> * 4, [[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<thermalfoundation:material:864>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>]]);
recipes.addShaped(<buildinggadgets:constructionblockpowder> * 8, [[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<thermalfoundation:material:865>,<minecraft:concrete_powder>],[<minecraft:concrete_powder>,<minecraft:concrete_powder>,<minecraft:concrete_powder>]]);

# Dense Construction Chunk & Construction Paste: more recipes in OreProcessingAdditions.zs

# Paste Container
recipes.remove(<buildinggadgets:constructionpastecontainer>);
recipes.addShaped(<buildinggadgets:constructionpastecontainer>, [[<thermalfoundation:material:32>,<thermalfoundation:material:32>,<thermalfoundation:material:32>],[<contenttweaker:energized_dark_ingot>,<buildinggadgets:constructionpaste>,<contenttweaker:energized_dark_ingot>],[<contenttweaker:energized_dark_ingot>,<buildinggadgets:constructionpaste>,<contenttweaker:energized_dark_ingot>]]);

# Paste Container T2
recipes.remove(<buildinggadgets:constructionpastecontainert2>);
recipes.addShaped("paste_container_T2", <buildinggadgets:constructionpastecontainert2>, [[<buildinggadgets:constructionpastecontainer>.marked("container1"),<thermalfoundation:material:33>,<buildinggadgets:constructionpastecontainer>.marked("container2")],[<thermalfoundation:material:33>,<industrialforegoing:plastic>,<thermalfoundation:material:33>],[<buildinggadgets:constructionpastecontainer>.marked("container3"),<thermalfoundation:material:33>,<buildinggadgets:constructionpastecontainer>.marked("container4")]],
function(out,ins,cInfo) {

	var amount1 = 0 as IData;
	var amount2 = 0 as IData;
	var amount3 = 0 as IData;
	var amount4 = 0 as IData;

	if(ins.container1.tag has "amount") {
		amount1 = ins.container1.tag.amount;
	}
	if(ins.container2.tag has "amount") {
		amount2 = ins.container2.tag.amount;
	}
	if(ins.container3.tag has "amount") {
		amount3 = ins.container3.tag.amount;
	}
	if(ins.container4.tag has "amount") {
		amount4 = ins.container4.tag.amount;
	}

	return out.withTag({"amount": amount1 + amount2 + amount3 + amount4});

}, null);

# Paste Container T3
recipes.remove(<buildinggadgets:constructionpastecontainert3>);
recipes.addShaped("paste_container_T3", <buildinggadgets:constructionpastecontainert3>, [[<buildinggadgets:constructionpastecontainert2>.marked("container1"),<avaritia:resource>,<buildinggadgets:constructionpastecontainert2>.marked("container2")],[<avaritia:resource>,<contenttweaker:hyper_diamond_block>,<avaritia:resource>],[<buildinggadgets:constructionpastecontainert2>.marked("container3"),<avaritia:resource>,<buildinggadgets:constructionpastecontainert2>.marked("container4")]],
function(out,ins,cInfo) {

	var amount1 = 0 as IData;
	var amount2 = 0 as IData;
	var amount3 = 0 as IData;
	var amount4 = 0 as IData;

	if(ins.container1.tag has "amount") {
		amount1 = ins.container1.tag.amount;
	}
	if(ins.container2.tag has "amount") {
		amount2 = ins.container2.tag.amount;
	}
	if(ins.container3.tag has "amount") {
		amount3 = ins.container3.tag.amount;
	}
	if(ins.container4.tag has "amount") {
		amount4 = ins.container4.tag.amount;
	}

	return out.withTag({"amount": amount1 + amount2 + amount3 + amount4});

}, null);

# Creative Paste Container
recipes.remove(<buildinggadgets:constructionpastecontainercreative>);
recipes.addShaped(<buildinggadgets:constructionpastecontainercreative>, [[<buildinggadgets:constructionpastecontainert3>,<alchemistry:ingot:118>,<buildinggadgets:constructionpastecontainert3>],[<alchemistry:ingot:118>,<galacticraftcore:infinite_oxygen>,<alchemistry:ingot:118>],[<buildinggadgets:constructionpastecontainert3>,<alchemistry:ingot:118>,<buildinggadgets:constructionpastecontainert3>]]);

print("ENDING BuildingGadgets.zs");