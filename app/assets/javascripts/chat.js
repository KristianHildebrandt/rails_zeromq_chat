function scroll_chat_to_end(){
  var $chat_container = $("#chat-container");
  var container_height = $chat_container.height();

  $chat_container.scrollTop(container_height);
}

$(document).ready(function(){
  scroll_chat_to_end();
});
