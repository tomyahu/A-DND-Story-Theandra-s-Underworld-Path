extends "res://src/items/armor/Armor.gd"

# Base AC
export var base_ac = 10
export var is_str_required = false
export var str_required = 10

# Add proficiency with light armor
func _ready():
	proficiencies_required.append(ProficiencyManager.get_heavy_armor_proficiency())

# get_ac_applied_to_entity: Entity -> num
# gets the armor class when the entity given is wearing this set or armor
func get_ac_applied_to_entity(entity):
	return base_ac

# can_equip: Entity -> bool
# checks if an entity can equip this piece of armor
func can_equip(entity):
	var aux = .can_equip(entity)
	
	if is_str_required:
		aux = aux and (entity.get_str() >= str_required)
	
	return aux
