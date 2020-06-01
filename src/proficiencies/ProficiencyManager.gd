extends Node

const Proficiency = preload("res://src/proficiencies/Proficiency.gd")

# Armor Proficiencies
var light_armor_proficiency = Proficiency.new("light_armor")
var medium_armor_proficiency = Proficiency.new("medium_armor")
var heavy_armor_proficiency = Proficiency.new("heavy_armor")
var shield_armor_proficiency = Proficiency.new("shields")

# Weapon Proficiencies
var simple_weapon_proficiency = Proficiency.new("simple_weapons")
var martial_weapon_proficiency = Proficiency.new("martial_weapons")


# Languages
var common_language = Proficiency.new("language_common")
var draconic_language = Proficiency.new("language_draconic")
var dwarvish_language = Proficiency.new("language_dwarvish")

func _ready():
	pass

# armor getters
func get_light_armor_proficiency():
	return light_armor_proficiency

func get_medium_armor_proficiency():
	return medium_armor_proficiency

func get_heavy_armor_proficiency():
	return heavy_armor_proficiency

func get_shields_proficiency():
	return shield_armor_proficiency


# weapon getters
func get_simple_weapon_proficiency():
	return simple_weapon_proficiency

func get_martial_weapon_proficiency():
	return martial_weapon_proficiency


# languague getters
func get_common_language():
	return common_language

func get_draconic_language():
	return draconic_language

func get_dwarvish_language():
	return dwarvish_language
