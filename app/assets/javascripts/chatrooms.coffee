$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      $(this).submit()

  $('.content').hide();

  $(".element_name").on "click", (e) ->
    e.preventDefault()
    $(this).siblings('.content').slideToggle(500);

