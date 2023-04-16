extends Node3D
class_name Player

var menu_open_sfx:AudioStreamPlayer3D

var XR_interface:XRInterface

# Called when the node enters the scene tree for the first time.
func _ready():
	XR_interface = XRServer.find_interface("OpenXR")
	
	if XR_interface and XR_interface.is_initialized():
		print("OpenXR Initialised")
		
		# turn off vsync so headset framerate isent limited to monitor refresh rate
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
		get_viewport().use_xr = true
		
		# now that VR is initialised, do some other stuff
		
		menu_open_sfx = $XROrigin3D/XRControllerLeft/MenuButton/MenuOpenSFX
	else:
		print("OpenXR failed to initialise, is your headset plugged in?")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_button_button_pressed(_button):
	menu_open_sfx.play()
