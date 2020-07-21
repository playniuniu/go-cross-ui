package main

import (
	"fyne.io/fyne/app"
	"fyne.io/fyne/widget"
)

func main() {
	uiApp := app.New()
	w := uiApp.NewWindow("Cross UI")
	w.SetContent(widget.NewVBox(
		widget.NewLabel("Hello Cross UI!"),
		widget.NewButton("Quit", func() {
			uiApp.Quit()
		}),
	))
	w.ShowAndRun()
}
