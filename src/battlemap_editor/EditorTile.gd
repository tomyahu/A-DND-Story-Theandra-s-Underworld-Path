extends Node2D


var x = 0
var y = 0

var tile_dimention = 32


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# refresh_position: None -> None
# Refreshes the position of a tile
func refresh_position():
	self.position = Vector2(self.tile_dimention*self.x, self.tile_dimention*self.y)

# setters
func set_pos(new_x, new_y):
	self.x = new_x
	self.y = new_y
	self.refresh_position()

func set_x(new_x):
	self.set_pos(new_x, self.y)
	
func set_y(new_y):
	self.set_pos(self.x, new_y)

# getters
func get_x():
	return self.x

func get_y():
	return self.y

func get_tile_dimension():
	return self.tile_dimention
