extends "res://src/entities/Entity.gd"

# Player data
var race = ""
var class_definition = ""

# class levels
var levels_barbarian = 0
var levels_bard = 0
var levels_cleric = 0
var levels_druid = 0
var levels_fighter = 0
var levels_monk = 0
var levels_paladin = 0
var levels_ranger = 0
var levels_rogue = 0
var levels_sorcerer = 0
var levels_warlock = 0
var levels_wizard = 0

# Saving Throw Proficiencies
var str_saving_throw = 0
var dex_saving_throw = 0
var con_saving_throw = 0
var int_saving_throw = 0
var wis_saving_throw = 0
var cha_saving_throw = 0

# skill modifier
var acrobatics_skill = 0
var animal_handling_skill = 0
var arcana_skill = 0
var athletics_skill = 0
var deception_skill = 0
var history_skill = 0
var insight_skill = 0
var intimidation_skill = 0
var investigation_skill = 0
var medicine_skill = 0
var nature_skill = 0
var perception_skill = 0
var performance_skill = 0
var persuasion_skill = 0
var religion_skill = 0
var sleight_of_hand_skill = 0
var stealth_skill = 0
var survival_skill = 0

# Items
var money = 0

# get_total_levels: None -> num
# gets the total levels of the character
func get_total_levels():
	var aux = 0
	aux += levels_barbarian
	aux += levels_bard
	aux += levels_cleric
	aux += levels_druid
	aux += levels_fighter
	aux += levels_monk
	aux += levels_paladin
	aux += levels_ranger
	aux += levels_rogue
	aux += levels_sorcerer
	aux += levels_warlock
	aux += levels_wizard
	
	return aux

# get_proficiency_bonus: None -> num
# getst the proficiency bonus for this character
func get_proficiency_bonus():
	var levels = get_total_levels()
	return int((levels + 7)/4)

#getters
func get_race():
	return race

func get_class_definition():
	return class_definition

func get_barbarian_levels():
	return levels_barbarian

func get_bard_levels():
	return levels_bard

func get_cleric_levels():
	return levels_cleric

func get_druid_levels():
	return levels_druid

func get_fighter_levels():
	return levels_fighter

func get_monk_levels():
	return levels_monk

func get_paladin_levels():
	return levels_paladin

func get_ranger_levels():
	return levels_ranger

func get_rogue_levels():
	return levels_rogue

func get_sorcerer_levels():
	return levels_sorcerer

func get_warlock_levels():
	return levels_warlock

func get_wizard_levels():
	return levels_wizard

# skill modifiers getters
func get_acrobatics_skill():
	return get_dex_mod() + acrobatics_skill*get_proficiency_bonus()

func get_animal_handling_skill():
	return get_wis_mod() + animal_handling_skill*get_proficiency_bonus()

func get_arcana_skill():
	return get_int_mod() + arcana_skill*get_proficiency_bonus()

func get_athletics_skill():
	return get_str_mod() + athletics_skill*get_proficiency_bonus()

func get_deception_skill():
	return get_cha_mod() + deception_skill*get_proficiency_bonus()

func get_history_skill():
	return get_int_mod() + history_skill*get_proficiency_bonus()

func get_insight_skill():
	return get_wis_mod() + insight_skill*get_proficiency_bonus()

func get_intimidation_skill():
	return get_cha_mod() + intimidation_skill*get_proficiency_bonus()

func get_investigation_skill():
	return get_int_mod() + investigation_skill*get_proficiency_bonus()

func get_medicine_skill():
	return get_wis_mod() + medicine_skill*get_proficiency_bonus()

func get_nature_skill():
	return get_int_mod() + nature_skill*get_proficiency_bonus()

func get_perception_skill():
	return get_wis_mod() + perception_skill*get_proficiency_bonus()

func get_performance_skill():
	return get_cha_mod() + performance_skill*get_proficiency_bonus()

func get_persuasion_skill():
	return get_cha_mod() + persuasion_skill*get_proficiency_bonus()

func get_religion_skill():
	return get_int_mod() + religion_skill*get_proficiency_bonus()

func get_sleight_of_hand_skill():
	return get_dex_mod() + sleight_of_hand_skill*get_proficiency_bonus()

func get_stealth_skill():
	return get_dex_mod() + stealth_skill*get_proficiency_bonus()

func get_survival_skill():
	return get_wis_mod() + survival_skill*get_proficiency_bonus()

# Saving throws modifiers getters
func get_str_saving_throw_mod():
	return get_str_mod() + str_saving_throw*get_proficiency_bonus()

func get_dex_saving_throw_mod():
	return get_dex_mod() + dex_saving_throw*get_proficiency_bonus()

func get_con_saving_throw_mod():
	return get_con_mod() + con_saving_throw*get_proficiency_bonus()

func get_int_saving_throw_mod():
	return get_int_mod() + int_saving_throw*get_proficiency_bonus()

func get_wis_saving_throw_mod():
	return get_wis_mod() + wis_saving_throw*get_proficiency_bonus()

func get_cha_saving_throw_mod():
	return get_cha_mod() + cha_saving_throw*get_proficiency_bonus()
