extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# get_stat_modifier: num -> num
# gets the modifier of a stat
static func get_stat_modifier(num):
	return (num/2) - 5
