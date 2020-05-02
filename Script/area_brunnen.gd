extends Area2D

var audio = 0

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_area_brunnen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		audio = audio+1
		if event.button_index == BUTTON_RIGHT and event.pressed and audio==1:
			var ansehen_brunnen = AudioStreamPlayer.new()
			self.add_child(ansehen_brunnen)
			ansehen_brunnen.stream = load("res://Audio/Voice/Voice Erzähler/Spur 119.wav")
			ansehen_brunnen.play()
		if event.button_index == BUTTON_RIGHT and event.pressed and audio>=2:
			var ansehen_brunnen2 = AudioStreamPlayer.new()
			self.add_child(ansehen_brunnen2)
			ansehen_brunnen2.stream = load("res://Audio/Voice/Voice Erzähler/Spur 120.wav")
			ansehen_brunnen2.play()

		if event.button_index == BUTTON_LEFT and event.pressed:
			var benutzen_brunnen = AudioStreamPlayer.new()
			self.add_child(benutzen_brunnen)
			benutzen_brunnen.stream = load("res://Audio/Voice/Voice Erzähler Inter/Spur 119.wav")
			benutzen_brunnen.play()