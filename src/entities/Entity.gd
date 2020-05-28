extends Node2D

const CalculationLib = preload("res://src/lib/CalculationLib.gd")

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

# Characterisitcs
var proficiencies = []

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

# getters
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
