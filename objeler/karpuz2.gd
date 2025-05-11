extends RigidBody2D
var pos: Vector2 =Vector2.ZERO
var düşme=false
const boyut= 2500
var çarpışma=0
var temas_edenler

@export var yeninesne: PackedScene	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"birleşmeSesi".play()
	freeze=false
	var anasayfa = get_tree().current_scene
	anasayfa.puan += 1500000
	anasayfa.get_node("CanvasLayer/skor").text = "Puan: " + str(anasayfa.puan)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	contact_monitor=true
	max_contacts_reported=4
	var temas_edenler=get_colliding_bodies()
	if temas_edenler.size()>0:
		çarpışma=1
	else: 
		çarpışma=0
				
	pass # Replace with function body.
func _physics_process(delta: float) -> void:
	pass
