extends Node2D

const CalculationLib = preload("res://lib/CalculationLib.gd")

# Character Stats
var max_hp = 4
var hp = 4

var stat_str = 10
var stat_dex = 10
var stat_con = 10
var stat_int = 10
var stat_wis = 10
var stat_cha = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# get_ac: None -> int
# gets the armor class of a character
func get_ac():
	return 10 + CalculationLib.get_stat_modifier(stat_dex)
