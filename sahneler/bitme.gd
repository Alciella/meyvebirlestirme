extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused=false
	process_mode=Node.PROCESS_MODE_ALWAYS
	$VBoxContainer/sonpuan.text=str($"..".puan)+ "pt"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#$"puanın".text = $"../CanvasLayer/skor".text
	
	pass


func _on_tekrar_oyna_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/node_2d_anasayfa.tscn")

func _on_anasayfa_butonu_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
