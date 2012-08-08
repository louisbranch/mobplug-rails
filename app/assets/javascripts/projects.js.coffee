$ categoryFilter = ->
  if $('#category_menu').length
    $("#category_menu > li").click ->
      name = $(this).data('category')
      filterProjects(name)
      toggleCategory(this)
      false

filterProjects = (category) ->
  for item in $("#project_list > li")
    if category == 'all'
      $(item).show()
    else
      if $(item).data('categories') && $(item).data('categories').indexOf(category) >= 0
        $(item).show()
      else
        $(item).hide()

toggleCategory = (category) ->
  $(".active").toggleClass("active")
  $(category).toggleClass("active")

$ fullsizeProjectImage = ->
  if $(".full_project_img")
    $(".full_project_img").click ->
      img_source = $(this).attr('href')
      $("<div id=dialog></div>").dialog
        title: 'Screenshot',
        closeText: 'fechar',
        width: 800,
        position: ['center', 100],
        open: ->
          $("div#dialog").html("<img src="+ img_source+">")
      false
