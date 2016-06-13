$(function() {
  $('#new_comment').on('submit', function(e) {

    url = this.action

    data = {
      'authenticity_token': $("input[name='authenticity_token']").val(),
      'comment': {
        'body': $('#comment_body').val()
      }
    }

    $.ajax({
      type: "POST",
      url: url,
      data: data,
      success: function(response) {
        debugger
      }
    })
  })
});