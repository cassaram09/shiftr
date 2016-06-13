$(function() {
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();

    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      data: $(this).serialize(),
      success: function(response) {
        var $div = $('div#comments')
        $div.append(response);
        $('#comment_body').val('');
      }
    })
  })
});