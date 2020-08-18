extends Node

var tiles = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	self.reset()


func add_tile(tile, x, y):
	if tiles[x] == null:
		tiles[x] = {}
	
	tiles[x][y] = tile
	
	var north_tile = self.get_tile(x, y-1)
	var south_tile = self.get_tile(x, y+1)
	var west_tile = self.get_tile(x-1, y)
	var east_tile = self.get_tile(x+1, y)
	
	# Add north tile neighbours
	if north_tile != null:
		tile.add_neighbour_tile(north_tile)
		north_tile.add_neighbour_tile(tile)
	
	# Add south tile neighbours
	if south_tile != null:
		tile.add_neighbour_tile(south_tile)
		south_tile.add_neighbour_tile(tile)
	
	# Add west tile neighbours
	if west_tile != null:
		tile.add_neighbour_tile(west_tile)
		west_tile.add_neighbour_tile(tile)
	
	# Add east tile neighbours
	if east_tile != null:
		tile.add_neighbour_tile(east_tile)
		east_tile.add_neighbour_tile(tile)

func get_tile(x, y):
	if tiles[x] != null:
		return tiles[x][y]
	return null

# reset: None -> None
# Resets the tiles tested until now
func reset():
	self.tiles = {}
