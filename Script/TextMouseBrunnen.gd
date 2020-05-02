extends Node

func _on_area_bsche_mouse_entered():
	get_node("beispieltext/beispiellabel").set_text("Büsche")

func _on_area_bsche_mouse_exited():
	get_node("beispieltext/beispiellabel").set_text("")


func _on_area_friedhof_mouse_entered():
	get_node("beispieltext/beispiellabel").set_text("Friedhof")

func _on_area_friedhof_mouse_exited():
	get_node("beispieltext/beispiellabel").set_text("")

func _on_area_brunnen_mouse_entered():
	get_node("beispieltext/beispiellabel").set_text("Springbrunnen")


func _on_area_brunnen_mouse_exited():
	get_node("beispieltext/beispiellabel").set_text("")


func _on_area_polizist_mouse_entered():
	get_node("beispieltext/beispiellabel").set_text("Polizist")


func _on_area_polizist_mouse_exited():
	get_node("beispieltext/beispiellabel").set_text("")


func _on_area_ausweis_bush_mouse_entered():
	get_node("beispieltext/beispiellabel").set_text("Ausweis")


func _on_area_ausweis_bush_mouse_exited():
	get_node("beispieltext/beispiellabel").set_text("")
