extends RigidBody2D
@onready var mango=preload("res://objeler/mango.tscn")
var pos: Vector2 =Vector2.ZERO
var rotasyon=0
var düşme=true
var boyut=80
var dönme=90
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
			rotation_degrees=rotasyon
			rotasyon= rotasyon+dönme * delta
		elif Input.is_action_just_released("soltik"):
			freeze=false
			düşme=false
			
			
		
func _physics_process(delta: float) -> void:
	pass # Replace with function body.
