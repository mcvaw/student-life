# Copyright (c) 2020 PixelTrain
# Licensed under the GPL-3 License

extends AudioStreamPlayer

export (float) var position = 0.0


func _ready() -> void:
	play(position)