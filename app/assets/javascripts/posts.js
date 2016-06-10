function Comment(attributes) {
    this.body = attributes.body;
    this.id = attributes.id;
    this.user_id = attributes.user_id;
    this.post_id = attributes.post_id;
}

$(function() {
    Comment.templateSource = $('#entry-template').serialize();
    debugger // something is wrong with $('#entry-template'). is it getting to show.html.erb?
    Comment.template = Handlebars.compile(Comment.templateSource);
    Comment.template({body: "new comment"})
})

Comment.prototype.renderP = function() {
    return Comment.template(this);
}

$(function() {
  $('a#load_comments').on('click', function(e){

    $('a#load_comments').hide().after("<u><strong>Comments</strong></u>");
    
    $.get(this.href).success(function(json){
      json.comments.forEach(function(comment) {
        $('div#comments').append("<p>" + comment.body + "<p>");
      })
    })

    e.preventDefault();
  });
})

$(function() {
    $('form#new_comment').on('submit', function(e) {
        // data = {
        //     'authenticity_token': $("input[name='authenticity_token']").val(),
        //     'comment': {
        //         'body': $('#comment_body').val(),
        //         'user_id': $('#comment_user_id').val()
        //     }
        // }
        e.preventDefault();
        var $form = $(this);
        var action = $form.attr('action')
        var params = $form.serialize()

        // $.ajax({
        //     type: ($("input[name='_method']").val() || this.method),
        //     url: action,
        //     data: params,
        //     success: function(response){
                // $('#comment_body').val('')
                // $('div#comments').append(response)
        //     }
        // });

        $.ajax({
            url: action, 
            data: params,
            dataType: 'json',
            method: 'POST'
        }).success(function(json) {
            var comment = new Comment(json.comment);
            var commentP = comment.renderP();
            // var comment = json.comment
            // $('#comment_body').val('')
            // $('div#comments').append("<p>" + comment.body + "</p>")
        }).error(function(response) {
            console.log("You broke it!")
        });


        
    })
})