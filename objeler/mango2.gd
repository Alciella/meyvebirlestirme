extends RigidBody2D
@onready var kavun=preload("res://objeler/kavun2.tscn")
var pos: Vector2 =Vector2.ZERO
var düşme=false
const boyut= 640
var çarpışma=0
@export var yeninesne: PackedScene	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	freeze=false
	var anasayfa = get_tree().current_scene
	anasayfa.puan += 60000
	anasayfa.get_node("CanvasLayer/skor").text = "Puan: " + str(anasayfa.puan)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
			
		
func _physics_process(delta: float) -> void:
	contact_monitor=true
	max_contacts_reported=4
	if düşme==false:
		var temas_edenler=get_colliding_bodies()
		if temas_edenler.size()>0:
			çarpışma=1
		else: 
			çarpışma=0
		for i in temas_edenler:
			if i is RigidBody2D and i.boyut == boyut:
				if self.get_instance_id() > i.get_instance_id():
					var konum=global_position
					var yeni_meyve=kavun.instantiate()
					get_tree().current_scene.add_child(yeni_meyve)
					yeni_meyve.position=konum
					queue_free() 
					i.queue_free()
				
				
				
	pass # Replace with function body.
