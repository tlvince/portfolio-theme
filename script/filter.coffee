bindEvent = (elem, evt, cb) ->
  if elem.addEventListener
    elem.addEventListener evt, cb, false
  else if elem.attachEvent
    elem.attachEvent "on" + evt, ->
      cb.call event.srcElement, event

toggleProjects = (tag) ->
  for project in document.getElementsByClassName("project")
    if tag in project.classList
      project.classList.remove "hide"
    else
      project.classList.add "hide"

for tag in document.getElementsByClassName("tag")
  bindEvent tag, "click", (e) ->
    toggleProjects @id
