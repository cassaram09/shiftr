function Comment(id, body) {
  this.id = id;
  this.body = body;
}

Comment.prototype.formatter = function() {
  return this.body.toUpperCase();
};

$(function() {
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();

    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      dataType: 'json',
      data: $(this).serialize(),
      success: function(json) {
        var comment = json.comment
        var response = new Comment(comment.id, comment.body)
        var $div = $('div#comments');
        $div.append("<p>" + response.formatter() + "</p>");
        $('#comment_body').val('');
      }
    })
  })
});

$(function() {
  $('a#load_comments').on('click', function(e){
    e.preventDefault();
    $.ajax({
      url: this.href
    }).success(function(response){
      $('div.comments').html(response)
    })
  })
});