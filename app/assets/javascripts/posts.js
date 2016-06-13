$(function() {
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();

    // AJAXING
    // $.ajax({
    //   type: ($("input[name='_method']").val() || this.method),
    //   url: this.action,
    //   data: $(this).serialize(),
    //   success: function(response) {
    //     var $div = $('div#comments')
    //     $div.append(response);
    //     $('#comment_body').val('');
    //   }
    // })

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