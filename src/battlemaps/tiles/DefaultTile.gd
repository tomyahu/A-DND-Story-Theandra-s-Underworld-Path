extends Node2D


var neighbour_tiles = []


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# add_neighbour_tile: Tile -> None
# Adds a new tile to the neighbour tiles of this tile
func add_neighbour_tile(new_tile):
	if new_tile != null:
		neighbour_tiles.append(new_tile)

# getters
func get_neighbour_tiles():
	return self.neighbour_tiles
