extends Node

var cursor_arrow:CompressedTexture2D = load("res://Assets/cursor.png")
var cursor_pointer:CompressedTexture2D = load("res://Assets/cursor_interact.png")

func _ready():
	Input.set_custom_mouse_cursor(cursor_arrow, Input.CURSOR_ARROW)
	Input.set_custom_mouse_cursor(cursor_pointer,Input.CURSOR_POINTING_HAND)
