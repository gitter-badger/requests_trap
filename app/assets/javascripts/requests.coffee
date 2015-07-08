# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

update = ->
  path = window.location.pathname
  link = $( "#link a").attr("href")
  if path.match('/requests') and not path.match('/requests/')
    $.ajax(
      url: link
      dataType: "script"
    )

$( document ).on "page:update", ->
  setTimeout update, 3000


