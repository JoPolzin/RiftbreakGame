extends MeshInstance2D

var AuswahlFedertasche = false
var aFeld = 37 #die anfangs besetzten felder
var bFeld = 40

#WIE BLOCKE ICH DIE FELDER NU?! ;-;


# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Federtasche_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			AuswahlFedertasche = true
		

func _input(event):
	if AuswahlFedertasche == true:
		if event is InputEventKey and event.is_action_pressed("ui_right"):
			aFeld = aFeld+1
			#die ideee hier ist, dass man so die felder Blocken kann, die belegt sind
			bFeld = bFeld+1
			position +=Vector2(261, 74)
		if event is InputEventKey and event.is_action_pressed("ui_left")and aFeld:
			aFeld = aFeld-1
			bFeld = bFeld-1
			position -=Vector2(261, 74)
		if event is InputEventKey and event.is_action_pressed("ui_up")and aFeld>=8:
			aFeld = aFeld-7
			bFeld = bFeld-7
			position -=Vector2(-76, 228)
		if event is InputEventKey and event.is_action_pressed("ui_down"):
			position +=Vector2(-76, 228)
			aFeld = aFeld+7
			bFeld = bFeld+7