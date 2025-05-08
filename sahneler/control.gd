extends Control


signal devam
signal cık




func _on_devam_pressed() -> void:
	emit_signal("devam")



func _on_cık_pressed() -> void:
	emit_signal("cık")
