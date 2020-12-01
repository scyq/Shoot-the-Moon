extends Control

var classic_game = preload("res://nodes/main.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Begin/AnimationPlayer.play("ShowAuthor")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pvpButton_pressed():
	$buttonAudio.play()
	pass # Replace with function body.


func _on_buttonAudio_finished():
	get_tree().change_scene_to(classic_game)


func _on_Timer_timeout():
	$Begin.visible = false
	$Other.visible = true
	pass # Replace with function body.
