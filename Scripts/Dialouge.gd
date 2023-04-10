extends Control

@export var animPlayer:AnimationPlayer

func open_dialouge(character:String):
	if (character == "Leo"):
		self.visible = true
		animPlayer.play("Open_leo")
