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
	if girenler.size()==1 and girenler[0] is StaticBody2D:
		return 
	for i in girenler:
			
		if girenler.size()>=1:
			await get_tree().create_timer(2).timeout
			if get_overlapping_bodies().size()>1:
				print(get_tree())
				$"../bitme".show()
				get_tree().paused=true
				$"../bitme".process_mode=Node.PROCESS_MODE_ALWAYS
		pass
	pass # Replace with function body.
