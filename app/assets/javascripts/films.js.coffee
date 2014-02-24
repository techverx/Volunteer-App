$ ->
  # enable chosen js
  $('.chosen-select').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '200px'

window.post_comment = (element) ->
  details = $("#comment_field").find(":input").serializeObject();
  $.ajax
    url: $(element).attr('data-url')
    data: details