RegisterHotkeys() {
	hotkeys("Delete", "ButtonRemove", "Edit TheCloser Windows")
	hotkeys("^n", "ButtonAdd", "Edit TheCloser Windows")
	hotkeys("Enter", "EnterKey", "Edit TheCloser Windows")
	hotkeys("Escape", "CloseUseActive", "Add Active Window")
	hotkeys("Delete", "IgWinButtonDeleteWindow", "The Closer Ignore Window Manager")
	
	while, hk:=config.sn("//hotkeys/cmd").Item[A_Index-1], ea:=config.ea(hk)
		hotkeys(hk.text, ea.name, ea.description="Main Closer Hotkey" ? "disableGroup" : "")
}