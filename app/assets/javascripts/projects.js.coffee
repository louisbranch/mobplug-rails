$ categoryFilter = ->
  if $('#category_menu').length
    for category in $("#category_menu > li > a")
      $(category).click ->
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
  $(".category_active").toggleClass("category_active")
  $(category).toggleClass("category_active")

$ imageSlider = ->
  $('#slider').nivoSlider
    effect: 'fade',
    directionNavHide: false,
    controlNav: true
