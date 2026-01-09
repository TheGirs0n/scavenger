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
	battle_timer.start()

func _on_timer_timeout() -> void:
	if node_target != null:
		print(node_owner.name + " TRY ATTACK " + node_target.name)
		node_target.try_take_damage(node_owner.character_config.damage)
	else:
		battle_timer.stop()
		node_target = null
