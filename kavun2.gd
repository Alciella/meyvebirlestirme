extends RigidBody2D
@onready var kavun=preload("res://objeler/kavun2.tscn")
var pos: Vector2 =Vector2.ZERO
var düşme=false
const boyut= 80
@export var yeninesne: PackedScene	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	freeze=false
	var anasayfa = get_tree().current_scene
	anasayfa.puan += 50
	anasayfa.get_node("CanvasLayer/skor").text = "Puan: " + str(anasayfa.puan)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
			
		
func _physics_process(delta: float) -> void:
				
	pass # Replace with function body.
