$(function() {
  $('a#load_comments').on('click', function(e){

    $.get(this.href).success(function(json){
      json.comments.forEach(function(comment) {
        $('div#comments').append("<p>" + "<strong>" + comment.body + "</strong>" + "<p>");
      })
    })

    e.preventDefault();
  });
})

$(function() {
    $('form#new_comment').on('submit', function(e) {
        data = {
            'authenticity_token': $("input[name='authenticity_token']").val(),
            'comment': {
                'body': $('#comment_body').val(),
                'user_id': $('#comment_user_id').val()
            }
        }

        $.ajax({
            type: ($("input[name='_method']").val() || this.method),
            url: this.action,
            data: data,
            success: function(response){
                $('#comment_body').val('')
                $('div#comments').append(response)
            }
        });

        e.preventDefault();
    })
})