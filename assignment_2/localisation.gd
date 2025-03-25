extends Control

@onready var option_button : OptionButton = $OptionButton
@onready var label_greeting : Label = $Label
@onready var label_vehicle : Label = $LabelVehicle

func _ready() -> void:
	
	TranslationServer.set_locale("en")
	label_greeting.text = tr("greeting")  
	label_vehicle.text = tr("vehicle")

	
	option_button.clear()
	option_button.add_item("en")  # english
	option_button.add_item("es")  # spanish
	option_button.add_item("jp")  # japanese

func _on_option_button_item_selected(index: int) -> void:
	var locale : String = option_button.get_item_text(index)
	TranslationServer.set_locale(locale)
	label_greeting.text = tr("greeting")
	label_vehicle.text = tr("vehicle")
