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
        comment = json.comment
        response = new Comment(comment.id, comment.body)
        var comment = json.comment;
        var $div = $('div#comments');
        $div.append("<p>" + response.formatter() + "<p>");
        $('#comment_body').val('');
      }
    })
  })
});