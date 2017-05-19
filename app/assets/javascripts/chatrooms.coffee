$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      $(this).submit()

  $(".show_content").on "click", (e) ->
    e.preventDefault()
    $(this).children().slideToggle(500);

