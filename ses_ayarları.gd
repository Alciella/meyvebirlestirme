extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_onayla_pressed() -> void:
	AudioServer.set_bus_volume_db(0, linear_to_db($ses_kontrol/VBoxContainer/master.value))
	AudioServer.set_bus_volume_db(1, linear_to_db($ses_kontrol/VBoxContainer/music.value))
	AudioServer.set_bus_volume_db(2, linear_to_db($ses_kontrol/VBoxContainer/sfx.value))
	get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
