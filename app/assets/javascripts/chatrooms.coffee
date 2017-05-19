$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      console.log(e.keyCode)
      $(this).submit()

  $("#show_content").on "click", (e) ->
    console.log('!!aa!!')

