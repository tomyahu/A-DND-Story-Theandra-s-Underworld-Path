extends "res://src/items/armor/Armor.gd"

# Base AC
export var base_ac = 10

# Add proficiency with light armor
func _ready():
	proficiencies_required.append(ProficiencyManager.get_light_armor_proficiency())

# get_ac_applied_to_entity: Entity -> num
# gets the armor class when the entity given is wearing this set or armor
func get_ac_applied_to_entity(entity):
	return base_ac + entity.get_dex_mod()
