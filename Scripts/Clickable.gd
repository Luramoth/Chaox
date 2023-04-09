extends StaticBody3D

signal clicked()

func _input_event(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			clicked.emit()

func _mouse_enter():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)

func _mouse_exit():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
