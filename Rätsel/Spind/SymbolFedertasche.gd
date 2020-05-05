extends MeshInstance2D

export (Color, RGBA) var Auswahl #color aussuchen rechts/links in inspector
export (Color, RGBA) var keineAuswahl

func _ready():
	set_modulate(keineAuswahl)

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Federtasche_input_event(viewport, event, shape_idx):
	if event.is_pressed()and event.button_index == BUTTON_LEFT:
		set_modulate(Auswahl)

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Eimer_input_event(viewport, event, shape_idx):
	if event.is_pressed()and event.button_index == BUTTON_LEFT:
		set_modulate(keineAuswahl)