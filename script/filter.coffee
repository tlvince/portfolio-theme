toggleProjects = ->
  tag = location.hash.slice(1)
  for project in document.getElementsByClassName "project"
    if tag is "all" or tag is ""
      project.classList.remove "hide"
    else
      if tag in project.classList
        project.classList.remove "hide"
      else
        project.classList.add "hide"

if location.hash
  toggleProjects()
window.addEventListener "hashchange", toggleProjects, false

