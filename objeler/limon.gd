extends RigidBody2D
@onready var mango=preload("res://objeler/elma2.tscn")
var pos: Vector2 =Vector2.ZERO
var rotasyon=0
var düşme=true
var boyut=40
var miktar=40
var çarpışma=0
@export var yeninesne: PackedScene	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pos=Vector2(550,0)
	position=pos
	freeze=true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	


		if düşme:
			if Input.is_action_pressed("soltik"):
				pos.x=get_global_mouse_position().x
				position=pos
			elif Input.is_action_just_released("soltik"):
				freeze=false
				düşme=false
				
			
		
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
			if i is RigidBody2D and i.boyut ==boyut:
				if self.get_instance_id() > i.get_instance_id():
					var konum=global_position
					var yeni_meyve=mango.instantiate()
					get_tree().current_scene.add_child(yeni_meyve)
					yeni_meyve.position=konum
					queue_free() 
					i.queue_free()
					
					
				
	pass # Replace with function body.
