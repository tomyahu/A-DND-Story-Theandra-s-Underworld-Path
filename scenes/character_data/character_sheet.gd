extends Control

# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	var player = $Player
	
	$NameStrings.get_node("CharacterName").text = player.get_name()
	
	$ClassStrings.get_node("Class").text = player.get_class_definition()
