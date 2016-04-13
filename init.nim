import csfml


var window = newRenderWindow(videoMode(300, 200), "Menu")

proc eventLoop =
  var event: Event
  while window.pollEvent event:
    case event.kind:
      of EventType.Closed:
        window.close
      else:
        discard

while window.open:
  eventLoop()
  window.clear Black
  window.display
