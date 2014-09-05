# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
	$('#add-user').click ->
		$(this).toggle()
		$('#new-user').toggle()
	$('#cancel-add-user').click ->
		$('#new-user').toggle()
		$('#add-user').toggle()

