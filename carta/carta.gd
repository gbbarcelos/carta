class_name Carta
extends Node3D
@onready var anim: AnimationPlayer = $anim


func _ready() -> void:
	await get_tree().create_timer(0.4)
	anim.play('new_animation')

static func nova(n: String) -> Carta:
	var nova: Carta = Carta.new()
	nova.get_node("Label3D").set_text(n)
	
	return nova
