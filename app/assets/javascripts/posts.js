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
    var action = this.action;
    var params = $(this).serialize();

    $.post(action, params).success(function(json) {
      debugger
      console.log(json)
    }).error(function(response) {
      console.log("Oops", response)
    })

  })
});