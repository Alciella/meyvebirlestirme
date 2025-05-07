extends Node2D
var sayaç=0.0
var beklemesürei=0.3
var count=0
var puan: int = 0
@onready var meyveler=[preload("res://objeler/üzüm.tscn"),preload("res://objeler/limon.tscn"),preload("res://objeler/elma.tscn")

]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if puan>Counter.puan:
		Counter.puan=puan
	sayaç=sayaç-delta
	if Input.is_action_just_released("soltik") and sayaç<=0:
		sayaç=beklemesürei
		count=count+1
		
		var meyve=meyveler[randi()%meyveler.size()].instantiate()
		add_child(meyve)
		
	if Input.is_action_just_released("esc"):
		get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
		
		
