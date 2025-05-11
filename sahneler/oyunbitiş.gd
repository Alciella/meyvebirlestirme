extends Area2D

var izlenen_meyve: RigidBody2D = null
var zaman_damgasi: int = 0

func _on_body_entered(body: Node) -> void:
	if body is RigidBody2D:
		print("Meyve girdi:", body.name)
		izlenen_meyve = body
		zaman_damgasi = Time.get_ticks_msec()
		await get_tree().create_timer(1.0).timeout
		_kontrol_et_ve_bitir()
		
func _on_body_exited(body: Node) -> void:
	if body == izlenen_meyve:
		print("Meyve çıktı:", body.name)
		izlenen_meyve = null  # Takibi bırak

func _kontrol_et_ve_bitir():
	if izlenen_meyve != null:
		var icerdekiler = get_overlapping_bodies()
		if icerdekiler.has(izlenen_meyve):
			print("Oyun bitti! Meyve 1 saniye içeride kaldı.")
			$"../bitme".show()
			get_tree().paused = true
		else:
			print("Meyve artık içeride değil, oyun bitmedi.")
