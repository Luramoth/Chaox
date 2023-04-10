extends Node3D

@export var dialouge:Control

func _on_button_1_clicked():
	$OmniLight3D.light_color = Color(1,0,0)


func _on_button_2_clicked():
	$OmniLight3D.light_color = Color(0,1,0)


func _on_talkbox_clicked():
	dialouge.open_dialouge("Leo")
