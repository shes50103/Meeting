$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      $(this).submit()

  $('.content').hide();

  $(".element_name").on "click", (e) ->
    e.preventDefault()
    $(this).siblings('.content').slideToggle(500);



  $(i).siblings('.element_name').removeClass('btn-success').removeClass('btn-info').removeClass('btn-warning').addClass('btn-default')  for i in $(".element_completion") when $(i).text() == 0

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-success').removeClass('btn-warning').addClass('btn-info')  for i in $(".element_completion") when $(i).text() >= 10

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-info').removeClass('btn-success').addClass('btn-warning')  for i in $(".element_completion") when $(i).text() >= 70 

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-info').removeClass('btn-warning').addClass('btn-success')  for i in $(".element_completion") when $(i).text() >90






