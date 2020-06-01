extends "res://src/entities/players/Player.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	entity_name = "Theandra"
	race = "Dragonborn"
	class_definition = "Life Domain Cleric"
	
	levels_cleric = 4
	max_hp = 35
	
	# Stats
	stat_str = 14
	stat_dex = 8
	stat_con = 16
	stat_int = 10
	stat_wis = 16
	stat_cha = 12
	
	# Cleric Saving Throws
	wis_saving_throw = 1
	cha_saving_throw = 1
	
	# Skill Proficiencies
	history_skill = 1
	insight_skill = 1
	persuasion_skill = 1
	religion_skill = 1
	
	# Other Proficiencies
	# Armor Proficiencies
	proficiencies.append(ProficiencyManager.get_light_armor_proficiency())
	proficiencies.append(ProficiencyManager.get_medium_armor_proficiency())
	proficiencies.append(ProficiencyManager.get_heavy_armor_proficiency())
	proficiencies.append(ProficiencyManager.get_shields_proficiency())
	
	# Weapon Proficiencies
	proficiencies.append(ProficiencyManager.get_simple_weapon_proficiency())
	
	# Languages
	languages.append(ProficiencyManager.get_common_language())
	languages.append(ProficiencyManager.get_draconic_language())
	languages.append(ProficiencyManager.get_dwarvish_language())
