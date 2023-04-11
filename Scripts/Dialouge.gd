extends Control

signal Dialouge_finished()

@export var animPlayer:AnimationPlayer

@export var leo_amount:float = 0;

func open_dialouge(character:String, player:CharacterBody3D):
	if (character == "Leo"):
		self.visible = true
		
		player.statue = true
		
		animPlayer.play("Open_leo")
	elif (character == "Bassalt"):
		self.visible = true
		
		player.statue = true
		
		animPlayer.play("Open_bassalt")

func _on_animation_player_animation_finished(_anim_name):
	Dialouge_finished.emit()
