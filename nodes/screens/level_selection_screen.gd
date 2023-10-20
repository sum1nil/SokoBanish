extends GameScreen

@export var levels : Array[Resource]

@onready var _vbox = $CenterContainer/VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	for level in levels:
		var new_button = Button.new()
		new_button.text = level.name
		new_button.connect("pressed", func():
			Variables.current_level = level
			Screens.change_screen(Types.screens.play)
		)
		_vbox.add_child(new_button)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
