extends CharacterTemplate
class_name Player

@onready var autobattle_component: AutobattleComponent = $AutobattleComponent
@onready var equipment_component: EquipmentComponent = $EquipmentComponent
@onready var ring_component: PlayerRingComponent = $RingComponent
@onready var artifact_inventory: ArtifactInventory = $ArtifactInventory

func increase_stat(player_stats_type : GlobalEnums.CHARACTER_STATS_TO_INCREASE, player_stat_value : int):
	match player_stats_type:
		GlobalEnums.PLAYER_STATS_TO_INCREASE.MAX_HEALTH:
			character_config.max_health += player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.DAMAGE:
			character_config.damage += player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.DEFENSE:
			character_config.defense += player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.EVASIVE_CHANCE:
			character_config.evasive_chance += player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.ATTACK_SPEED:
			character_config.attack_speed += player_stat_value

func decrease_stat(player_stats_type : GlobalEnums.CHARACTER_STATS_TO_INCREASE, player_stat_value):
	match player_stats_type:
		GlobalEnums.PLAYER_STATS_TO_INCREASE.MAX_HEALTH:
			character_config.max_health -= player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.DAMAGE:
			character_config.damage -= player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.DEFENSE:
			character_config.defense -= player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.EVASIVE_CHANCE:
			character_config.evasive_chance -= player_stat_value
		GlobalEnums.PLAYER_STATS_TO_INCREASE.ATTACK_SPEED:
			character_config.attack_speed -= player_stat_value
