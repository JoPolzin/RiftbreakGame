extends Node
#the current active scene
var currentScene = null

func _ready():
	#on load set the current scene to the last scene available
	currentScene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() -1)

#create a function to switch between scenes
func _setScene (scene):
	#clean up the curren scene
	currentScene.queue_free()
	#load the file passed in as the param "scene"
	var s = ResourceLoader.load(scene)
	currentScene = s.instance()
	#add scene to root
	get_tree().get_root().add_child(currentScene)