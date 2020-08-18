extends Node2D

var EditorTile = load("res://scenes/battlemap_editor/EditorTile.tscn")

export var width = 10
export var height = 10

var tile_dimension = 32

var tiles = []


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Create initial tiles
	for i in range(height):
		tiles.append([])
		for j in range(width):
			var tile = EditorTile.instance()
			tiles[i].append(tile)
			$Tiles.add_child(tile)
			tile.set_pos(j, i)
	
	# adjust hitbox
	var pixel_width = tiles[0][0].get_tile_dimension()*width
	var pixel_height = tiles[0][0].get_tile_dimension()*height
	
	$CollisionShape2D.position = Vector2(pixel_width/2, pixel_height/2)
	$CollisionShape2D.shape.extents = Vector2(pixel_width/2, pixel_height/2)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouse:
		self.relocate_selector(event)

func relocate_selector(mouse_event):
	var relative_x = mouse_event.position.x - self.position.x
	var relative_y = mouse_event.position.y - self.position.y
	
	var adjusted_x = int(relative_x / tile_dimension) * tile_dimension
	var adjusted_y = int(relative_y / tile_dimension) * tile_dimension
	
	$Selector.position = Vector2(adjusted_x, adjusted_y)
