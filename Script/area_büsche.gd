extends Area2D

var audiobush = 0

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_area_bsche_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_RIGHT and event.pressed:
			audiobush = audiobush+1
			if audiobush % 4 ==1:
				var ansehen_bush = AudioStreamPlayer.new()
				self.add_child(ansehen_bush)
				ansehen_bush.stream = load("res://Audio/Voice/Voice Erzähler/Spur 124.wav")
				ansehen_bush.play()
			if audiobush % 4==2:
				var ansehen_bush2 = AudioStreamPlayer.new()
				self.add_child(ansehen_bush2)
				ansehen_bush2.stream = load("res://Audio/Voice/Voice Erzähler/Spur 125.wav")
				ansehen_bush2.play()
			if audiobush % 4==3:
				var ansehen_bush3 = AudioStreamPlayer.new()
				self.add_child(ansehen_bush3)
				ansehen_bush3.stream = load("res://Audio/Voice/Voice Erzähler/Spur 126.wav")
				ansehen_bush3.play()
			if audiobush % 4==0:
				var ansehen_bush4 = AudioStreamPlayer.new()
				self.add_child(ansehen_bush4)
				ansehen_bush4.stream = load("res://Audio/Voice/Voice Erzähler/Spur 127.wav")
				ansehen_bush4.play()

		if event.button_index == BUTTON_LEFT and event.pressed:
			var benutzen_bush = AudioStreamPlayer.new()
			self.add_child(benutzen_bush)
			benutzen_bush.stream = load("res://Audio/Voice/Voice Erzähler Inter/Spur 119.wav") #falsches Audio -> blättergeraschel
			benutzen_bush.play()

		# Load the custom images for the mouse cursor.

