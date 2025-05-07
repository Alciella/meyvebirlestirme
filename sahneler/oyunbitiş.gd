extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass


func _on_body_entered(body: Node2D) -> void:
	print("girdi")
	var girenler=get_overlapping_bodies()
	for i in girenler:
		if i.çarpışma==1:
			print("oyun biter")
			get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
		pass
		
	pass # Replace with function body.
