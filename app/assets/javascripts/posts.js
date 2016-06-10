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