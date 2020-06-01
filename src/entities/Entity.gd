extends Node2D

const CalculationLib = preload("res://src/lib/CalculationLib.gd")

# Entity Data
var entity_name = ""

# Character Stats
var max_hp = 4
var hp = 4

var stat_str = 10
var stat_dex = 10
var stat_con = 10
var stat_int = 10
var stat_wis = 10
var stat_cha = 10

var speed = 30
var climb_speed = 0
var swim_speed = 0
var fly_speed = 0

var ac = 0

# Saving Throw Proficiencies
var str_saving_throw_fixed_mod = 0
var dex_saving_throw_fixed_mod = 0
var con_saving_throw_fixed_mod = 0
var int_saving_throw_fixed_mod = 0
var wis_saving_throw_fixed_mod = 0
var cha_saving_throw_fixed_mod = 0

# Skill Proficiencies
var acrobatics_skill_fixed_mod = 0
var animal_handling_skill_fixed_mod = 0
var arcana_skill_fixed_mod = 0
var athletics_skill_fixed_mod = 0
var deception_skill_fixed_mod = 0
var history_skill_fixed_mod = 0
var insight_skill_fixed_mod = 0
var intimidation_skill_fixed_mod = 0
var investigation_skill_fixed_mod = 0
var medicine_skill_fixed_mod = 0
var nature_skill_fixed_mod = 0
var perception_skill_fixed_mod = 0
var performance_skill_fixed_mod = 0
var persuasion_skill_fixed_mod = 0
var religion_skill_fixed_mod = 0
var sleight_of_hand_skill_fixed_mod = 0
var stealth_skill_fixed_mod = 0
var survival_skill_fixed_mod = 0


# Characterisitcs
var proficiencies = []
var languages = []

# Equipment
var armor = null

# Called when the node enters the scene tree for the first time.
func _ready():
	ac = get_ac()

# recalculate_ac: None -> None
# Recalculates the entity's AC
func recalculate_ac():
	ac = get_ac()

# get_ac: None -> int
# gets the armor class of a character
func get_ac():
	var base_ac = get_base_ac()
	var armor_ac = 0
	if armor != null:
		armor_ac = armor.get_ac_applied_to_entity(self)
	
	return max(base_ac, armor_ac)

# get_ac: None -> int
# gets the armor class of a character with no modifiers and armor
func get_base_ac():
	return 10 + CalculationLib.get_stat_modifier(stat_dex)

# has_proficiency: Proficiency -> bool
# checks if the entity has the proficiency given
func has_proficiency(proficiency):
	return proficiencies.has(proficiency)

# equip_armor: Armor -> bool
# if the armor given can be equiped it equips the armor and returns true,
# otherwise returns false
func equip_armor(armor_to_equip):
	if armor_to_equip.can_equip(self):
		self.armor = armor_to_equip
		return true
	return false

# skill modifiers getters
func get_acrobatics_skill():
	return get_dex_mod() + acrobatics_skill_fixed_mod

func get_animal_handling_skill():
	return get_wis_mod() + animal_handling_skill_fixed_mod

func get_arcana_skill():
	return get_int_mod() + arcana_skill_fixed_mod

func get_athletics_skill():
	return get_str_mod() + athletics_skill_fixed_mod

func get_deception_skill():
	return get_cha_mod() + deception_skill_fixed_mod

func get_history_skill():
	return get_int_mod() + history_skill_fixed_mod

func get_insight_skill():
	return get_wis_mod() + insight_skill_fixed_mod

func get_intimidation_skill():
	return get_cha_mod() + intimidation_skill_fixed_mod

func get_investigation_skill():
	return get_int_mod() + investigation_skill_fixed_mod

func get_medicine_skill():
	return get_wis_mod() + medicine_skill_fixed_mod

func get_nature_skill():
	return get_int_mod() + nature_skill_fixed_mod

func get_perception_skill():
	return get_wis_mod() + perception_skill_fixed_mod

func get_performance_skill():
	return get_cha_mod() + performance_skill_fixed_mod

func get_persuasion_skill():
	return get_cha_mod() + persuasion_skill_fixed_mod

func get_religion_skill():
	return get_int_mod() + religion_skill_fixed_mod

func get_sleight_of_hand_skill():
	return get_dex_mod() + sleight_of_hand_skill_fixed_mod

func get_stealth_skill():
	return get_dex_mod() + stealth_skill_fixed_mod

func get_survival_skill():
	return get_wis_mod() + survival_skill_fixed_mod

func get_passive_perception():
	return 10 + get_perception_skill()

func get_passive_insight():
	return 10 + get_insight_skill()

# Saving throws modifiers getters
func get_str_saving_throw_mod():
	return get_str_mod() + str_saving_throw_fixed_mod

func get_dex_saving_throw_mod():
	return get_dex_mod() + dex_saving_throw_fixed_mod

func get_con_saving_throw_mod():
	return get_con_mod() + con_saving_throw_fixed_mod

func get_int_saving_throw_mod():
	return get_int_mod() + int_saving_throw_fixed_mod

func get_wis_saving_throw_mod():
	return get_wis_mod() + wis_saving_throw_fixed_mod

func get_cha_saving_throw_mod():
	return get_cha_mod() + cha_saving_throw_fixed_mod

# getters
func get_name():
	return entity_name

func get_max_hp():
	return max_hp

func get_hp():
	return hp

func get_str():
	return stat_str

func get_dex():
	return stat_dex

func get_con():
	return stat_con

func get_int():
	return stat_int

func get_wis():
	return stat_wis

func get_cha():
	return stat_cha

func get_str_mod():
	return CalculationLib.get_stat_modifier(get_str())

func get_dex_mod():
	return CalculationLib.get_stat_modifier(get_dex())

func get_con_mod():
	return CalculationLib.get_stat_modifier(get_con())

func get_int_mod():
	return CalculationLib.get_stat_modifier(get_int())

func get_wis_mod():
	return CalculationLib.get_stat_modifier(get_wis())

func get_cha_mod():
	return CalculationLib.get_stat_modifier(get_cha())

func get_speed():
	return speed

func get_climb_speed():
	return climb_speed

func get_swim_speed():
	return swim_speed

func get_fly_speed():
	return fly_speed
