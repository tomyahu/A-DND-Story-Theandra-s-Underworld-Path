extends "res://src/items/Item.gd"

# TODO: add size
var proficiencies_required = {}
export var stealth_disadvantage = false

# get_ac_applied_to_entity: Entity -> num
# gets the armor class when the entity given is wearing this set or armor
func get_ac_applied_to_entity(entity):
	return 10

# can_equip: Entity -> bool
# checks if an entity can equip this piece of armor
func can_equip(entity):
	var aux = true
	
	for i in range(len(proficiencies_required)):
		var proficiency = proficiencies_required[i]
		aux = aux and entity.has_proficiency(proficiency)
	
	return aux
