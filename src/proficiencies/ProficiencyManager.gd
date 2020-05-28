extends Node

const Proficiency = preload("res://src/proficiencies/Proficiency.gd")

# Armor Proficiencies
var light_armor_proficiency = Proficiency.new("light_armor")
var medium_armor_proficiency = Proficiency.new("medium_armor")
var heavy_armor_proficiency = Proficiency.new("heavy_armor")

func _ready():
	pass


# getters
func get_light_armor_proficiency():
	return light_armor_proficiency

func get_medium_armor_proficiency():
	return medium_armor_proficiency

func get_heavy_armor_proficiency():
	return heavy_armor_proficiency
