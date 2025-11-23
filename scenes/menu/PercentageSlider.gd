extends HSlider

@onready var label: Label = $Label

func _ready() -> void:
    _set_label(value)

func _on_slider_focus_entered() -> void:
    GlobalMenuEvents.emit_percentage_slider_focused(label)

func _on_value_changed(new_value: float) -> void:
    _set_label(new_value)

func _set_label(new_value: float) -> void:
    label.text = str(int(new_value * 100)) + "%"
