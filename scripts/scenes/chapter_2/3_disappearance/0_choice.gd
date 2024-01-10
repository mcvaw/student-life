extends Control

# Script for a scene with a choice of actions.
# The player must check all the options,
# then the next scene must be loaded.
# Copyright (c) 2020-2021 PixelTrain
# Licensed under the GPL-3 License

@export_file("*.tscn") var next_scene_path
@export_file("*.tscn") var phone_scene
@export_file("*.tscn") var commandant_scene
@onready var _buttons := $Buttons


func _ready() -> void:
	var sv_phone: String = STORAGE.get_value("sv_phone")
	var sv_commandant: String = STORAGE.get_value("sv_commandant")
	
	# Has the phone been checked?
	if sv_phone != "yes":
		_buttons.add_option("CHECK_PHONE", phone_scene)
	
	# Did the player ask the commandant?
	if sv_commandant != "yes":
		_buttons.add_option("ASK_COMMANDANT", commandant_scene)
	
	# Load next scene
	if sv_phone == "yes" and sv_commandant == "yes":
		await get_tree().create_timer(2).timeout
		SCENES.load_scene(next_scene_path)
	
