extends Node2D
var sayaç=0.0
var beklemesürei=1
var count=0
var puan: int = 0
@onready var devamiste = $Control
@onready var cıkmakiste = $Control
@onready var meyveler=[preload("res://objeler/üzüm.tscn"),preload("res://objeler/limon.tscn"),preload("res://objeler/elma.tscn")

]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control.hide()
	devamiste.connect("devam", Callable(self, "devamla"))
	cıkmakiste.connect("cık", Callable(self, "cıkıldı"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_global_mouse_position().x<50:
		Input.warp_mouse(Vector2(50, get_global_mouse_position().y)) 
	if get_global_mouse_position().x>1100:
		Input.warp_mouse(Vector2(1100, get_global_mouse_position().y)) 
	if get_global_mouse_position().y>600:
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
	Counter.düşmez=true
	
func devamla():
	print("oldu")
	$Control.hide()
	Counter.düşmez=false
	
func cıkıldı():
	print("çalıştı")
	get_tree().change_scene_to_file("res://sahneler/main menu.tscn")
