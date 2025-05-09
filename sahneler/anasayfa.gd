extends Node2D
var sayaç=0.0
var beklemesürei=0.5
var count=0
var puan: int = 0

@onready var devamiste = $Control
@onready var cıkmakiste = $Control
@onready var meyveler=[preload("res://objeler/üzüm.tscn"),preload("res://objeler/limon.tscn")

]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	

	$bitme.hide()
	$Control.hide()
	devamiste.connect("devam", Callable(self, "devamla"))
	cıkmakiste.connect("cık", Callable(self, "cıkıldı"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Counter.anasayfa_puan = puan
	
	
	
	if puan >5000 and puan<50000:
		meyveler=[preload("res://objeler/üzüm.tscn"),preload("res://objeler/limon.tscn"),preload("res://objeler/elma.tscn")]
	if puan >50000:
		meyveler=[preload("res://objeler/üzüm.tscn"),preload("res://objeler/limon.tscn"),preload("res://objeler/elma.tscn"),]
	
	
	
	
	
	if get_global_mouse_position().x<50:
		Input.warp_mouse(Vector2(50, get_global_mouse_position().y)) 
	if get_global_mouse_position().x>1800:
		Input.warp_mouse(Vector2(1100, get_global_mouse_position().y)) 
	if get_global_mouse_position().y>2000:
		Input.warp_mouse(Vector2(get_global_mouse_position().x,600)) 
		
	if puan>Counter.puan:
		Counter.puan=puan
	sayaç=sayaç-delta
	if Input.is_action_just_released("soltik") and sayaç<=0:
		sayaç=beklemesürei
		var meyve=meyveler[randi()%meyveler.size()].instantiate()
		add_child(meyve)
		
		
	if Input.is_action_just_released("esc"):
		get_tree().change_scene_to_file("res://sahneler/main menu.tscn")


func _on_exit_button_pressed() -> void:
	$Control.show()
	get_tree().paused=true
	$Control.process_mode=Node.PROCESS_MODE_ALWAYS
	$Control.set_z_as_relative(false)
	$Control.z_index = 1000
	
func devamla():
	print("oldu")
	$Control.hide()
	get_tree().paused=false

	
	
func cıkıldı():
	print("çalıştı")
	get_tree().paused=false


	get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
	
