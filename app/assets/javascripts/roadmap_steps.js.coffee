# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$('#add-step').click ->
		$(this).toggle()
		$('#new-step').toggle()
	$('#cancel-add-step').click ->
		$('#new-step').toggle()
		$('#add-step').toggle()