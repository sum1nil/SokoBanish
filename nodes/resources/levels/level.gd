class_name GameLevel extends Resource

@export var name := "New Level"
@export var width := 7
@export var layout : Array[types] = [ types.wall_top_left, types.wall_top, types.wall_top, types.wall_top, types.wall_top_left, types.wall_top, types.wall_top_right, types.wall_left, types.empty, types.empty, types.empty, types.empty, types.empty, types.wall_right, types.wall_left, types.empty, types.empty, types.empty, types.empty, types.empty, types.wall_right,	types.wall_left, types.empty, types.empty, types.empty, types.empty,
types.empty, types.wall_right, 	types.wall_left, types.empty, types.empty, types.empty, types.empty, types.empty, types.wall_right, types.wall_left, types.empty, types.empty, types.empty, types.empty, types.empty, types.wall_right, types.wall_bottom_left, types.wall_bottom, types.wall_bottom, types.wall_bottom, types.wall_bottom, types.wall_bottom, types.wall_bottom_right,]

enum types {
	wall_top_left,
	wall_top,
	wall_top_right,
	wall_right,
	wall_bottom_right,
	wall_bottom,
	wall_bottom_left,
	wall_left,
	empty,
	player,
	crate,
	dot,
	door,}


