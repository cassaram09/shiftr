$(function() {
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();

    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      dataType: 'json',
      data: $(this).serialize(),
      success: function(json) {
        var comment = json.comment;
        var $div = $('div#comments');
        $div.append("<p>" + comment.body + "<p>");
        $('#comment_body').val('');
      }
    })
  })
});