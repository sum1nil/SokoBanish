extends Node

var  root = null
var current_screen : Types.screens
var current_screen_node: GameScreen
var is_changing_scene := false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	root = get_tree().get_root()
	current_screen_node = root.get_children().back()
#	print(root.get_children().back().name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func change_screen(new_screen: Types.screens) -> void:
	if is_changing_scene:
		return

	is_changing_scene = true

	var new_screen_node = Constants.screen_scenes[new_screen].instantiate()
	# print(new_screen_node.type)
	load_new_screen(new_screen_node, new_screen)

func load_new_screen(new_screen_node: GameScreen, new_screen : Types.screens) -> void:
	current_screen_node.queue_free()
	root.add_child(new_screen_node)

	current_screen = new_screen
	current_screen_node = new_screen_node

	is_changing_scene = false
