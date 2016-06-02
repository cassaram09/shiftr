# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $('.admin_link').click (event) ->
    event.preventDefault()
    $('.admin_panel').fadeToggle()

  $('.shift_link').click (event) ->
    event.preventDefault()
    $('.shift_panel').fadeToggle()