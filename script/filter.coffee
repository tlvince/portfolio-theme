toggleProjects = ->
  tag = location.hash.slice(1)
  for project in document.getElementsByClassName "project"
    if tag is ""
      project.classList.remove "hide"
    else
      if tag in project.classList
        project.classList.remove "hide"
      else
        project.classList.add "hide"

rewriteLinks = ->
  for tag in document.getElementsByClassName "tag"
    base = /(.*)\.html/.exec(tag.getAttribute "href")[1]
    tag.setAttribute "href", "#" + base

rewriteLinks()
if location.hash
  toggleProjects()
window.addEventListener "hashchange", toggleProjects, false

