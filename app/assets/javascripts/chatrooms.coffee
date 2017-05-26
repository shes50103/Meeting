

$(document).on "turbolinks:load", ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      $scrollHeight=$(".chatroom_message_desplay")[0].scrollHeight  
      $(".chatroom_message_desplay").animate({ scrollTop: $scrollHeight}, 200)
      $(this).submit()

  $('.chatroom_message_desplay').scrollTop(10000)

      
  $('.content').hide();

  $(".element_name").on "click", (e) ->
    e.preventDefault()
    $(this).siblings('.content').slideToggle(500);

  $('.content_member').hide();

  $(".element_name_member").on "click", (e) ->
    e.preventDefault()
    $(this).siblings('.content_member').slideToggle(500);

  $('.content_info').hide();

  $(".element_name_info").on "click", (e) ->
    e.preventDefault()
    $(this).siblings('.content_info').slideToggle(500);



  $(i).siblings('.element_name').removeClass('btn-success').removeClass('btn-info').removeClass('btn-warning').addClass('btn-default')  for i in $(".element_completion") when $(i).text() == 0

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-success').removeClass('btn-warning').addClass('btn-info')  for i in $(".element_completion") when $(i).text() >= 10

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-info').removeClass('btn-success').addClass('btn-warning')  for i in $(".element_completion") when $(i).text() >= 70 

  $(i).siblings('.element_name').removeClass('btn-default').removeClass('btn-info').removeClass('btn-warning').addClass('btn-success')  for i in $(".element_completion") when $(i).text() >90


  button_audio=new Audio("http://www.monoame.com/awi_class/ballsound/click14.wav");
  screen_audio=new Audio("http://www.monoame.com/awi_class/ballsound/click18.wav");
  page=0;
  $(".sub_screen_right").on "click", (e) ->
    if page<2
      page+=1;
      $(".pages").css("left","-"+page*100+"%")
      screen_audio.play();  
    else
      button_audio.play();

  $(".sub_screen_left").on "click", (e) ->
    if page>0
      page-=1;
      $(".pages").css("left","-"+page*100+"%");
      screen_audio.play();  
    else
      button_audio.play();




