extends GameScreen

@onready var _tiles := $Center/Stage/Tiles as TileMap
@onready var _nodes := $Center/Stage/Nodes as Node2D

# Called when the node+ enters the scene tree for the first time.
func _ready():
	var i := 0
	var level : GameLevel = Variables.current_level
	print("In PlayScreen on Level: " + level.name)
#	for item in range(0, level.width):
#		print(Types.blocks. # level.layout[item]])

	var half = floor(level.width / 2)
	print("Half: ", half)
	var remainder = level.width % 2
	print("Remainder: ", remainder)
	#for l in range(0, level.layout.size()):
	print("Level.layout array: ", level.layout)
	print("Types.tile_coordinates: ", Types.tile_coordinates)
	for y in range(-half - remainder, half):
		for x in range(-half - remainder, half):
			if Types.tile_coordinates.has(level.layout[i]):
				_tiles.set_cell(0, Vector2i(x,y), 0, Types.tile_coordinates[level.layout[i]])
			print("Level.Layout[i]: ", str(level.layout[i]))
#			print("Constants.node_scenes: ", Constants.node_scenes)
			# Create and add crate, dot, door, player scenes
			if Constants.node_scenes.has(level.layout[i]):
				var new_node = Constants.node_scenes[level.layout[i]].instantiate()
				_nodes.add_child(new_node)
				new_node.position = Vector2(x * 64, y * 64)

			if level.layout[i] == Types.blocks.crate:
				Variables.total_crates += 1

			i += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
