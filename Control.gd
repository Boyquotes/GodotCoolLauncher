extends Control

var drag = Vector2()
var follow = false

func _ready():
	get_tree().get_root().set_transparent_background(true)

func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			follow = !follow
			drag = get_local_mouse_position()

func _process(delta):
	if follow:
		OS.set_window_position(OS.window_position + get_global_mouse_position() - drag)

func _on_Button_pressed():
	OS.window_borderless = false
	get_tree().get_root().set_transparent_background(false)
	get_tree().change_scene("res://testscence.tscn")

func _on_TextureButton_pressed():
	print("Hello")
