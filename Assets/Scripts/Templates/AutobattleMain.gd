extends Node
class_name AutobattleComponent

@onready var battle_timer: Timer = $Timer
var node_owner : CharacterTemplate
var node_target : CharacterTemplate

func set_system_owner(new_owner : CharacterTemplate):
	node_owner = new_owner
	battle_timer.wait_time = node_owner.character_config.attack_speed
	
func set_system_target(new_target : CharacterTemplate):
	node_target = new_target

func _on_timer_timeout() -> void:
	pass 
