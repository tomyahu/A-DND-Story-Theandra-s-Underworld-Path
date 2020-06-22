extends Node2D


var north_tile = null
var south_tile = null
var east_tile = null
var west_tile = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# getters
func get_north_tile():
	return self.north_tile

func get_south_tile():
	return self.south_tile

func get_east_tile():
	return self.east_tile

func get_west_tile():
	return self.west_tile

# setters
func set_north_tile(new_north_tile):
	self.north_tile = new_north_tile

func set_south_tile(new_south_tile):
	self.south_tile = new_south_tile

func set_east_tile(new_east_tile):
	self.east_tile = new_east_tile

func set_west_tile(new_west_tile):
	self.west_tile = new_west_tile
