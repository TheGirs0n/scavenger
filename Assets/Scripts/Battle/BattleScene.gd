extends Node

@export var player_character : Player
@export var enemy_character : Enemy

func _ready() -> void:
	set_owners()
	set_targets()

func set_targets():
	player_character.autobattle_component.set_system_target(enemy_character)
	enemy_character.autobattle_component.set_system_target(player_character)
	
func set_owners():
	player_character.autobattle_component.set_system_owner(player_character)
	enemy_character.autobattle_component.set_system_owner(enemy_character)
