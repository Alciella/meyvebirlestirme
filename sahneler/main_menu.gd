extends Control

var puan=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	puan=Counter.puan
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	get_node("CanvasLayer/enskor").text = "En Yüksek Puan: " + str(puan)
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://sahneler/node_2d_anasayfa.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit() # Replace with function body.
