

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

  home_audio=new Audio("http://www.monoame.com/awi_class/ballsound/click23.wav");
  button_audio=new Audio("http://www.monoame.com/awi_class/ballsound/click14.wav");
  screen_audio=new Audio("http://www.monoame.com/awi_class/ballsound/click18.wav");
  page=0;
  wiggle_audio=new Audio("http://www.monoame.com/awi_class/ballsound/phonevi.mp3");
  wiggletime=21;
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

  $(".button").on "click", (e) ->
    page=0
    $(".pages").css("left","-"+page*100+"%")
    home_audio.play()

  $(".origin").on "click", (e) ->
    $(".phone").css("width","");
    $(".screen").css("height","");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".i6").on "click", (e) ->
    $(".phone").css("width","300px");
    $(".screen").css("height","420px");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".black").on "click", (e) ->
    $(".phone").css("background-color","rgba(0, 0, 0, 0.9)");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".white").on "click", (e) ->
    $(".phone").css("background-color","rgb(210,210,210)");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".gold").on "click", (e) ->
    $(".phone").css("background-color","#FFE66F");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".pink").on "click", (e) ->
    $(".phone").css("background-color","#FFD2D2");
    $(".phonename").text($(this).text());
    button_audio.play();

  $(".down").on "click", (e) ->
    $(".phone").css("bottom","-800px");
    button_audio.play();

  $(".up").on "click", (e) ->
    $(".phone").css("bottom","5px");
    button_audio.play();


  $(".wiggle").on "click", (e) ->
    wiggletime=0;
    wiggle_audio.play();

#為啥right晃動不行！！！
  setInterval ->
    console.log(wiggletime);
    if wiggletime<=20
      wiggletime+=1;
      if wiggletime%2==0
        $(".phone").css("right",""+(-55)+"px");
      else
        $(".phone").css("right",""+(65)+"px");
      if wiggletime==21
        $(".phone").css("right","");
  ,60






