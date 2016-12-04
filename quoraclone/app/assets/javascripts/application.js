// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .


$(document).ready(function(){

	// this it for the auto complete of the search bar
	  $.ajax({
        url: '/questions'
      }).done(function(response){

        $("#question").autocomplete({
          source: response,
          change: function( event, ui) {
          }
        });
	  })
	// end of search bar jazz

	// this is for the autocomplete for the send to user attr
	  $.ajax({
	  	url: '/users'
	  }).done(function(response){

	  	$(".username").autocomplete({
	  		source: response,
	  		change: function( event, ui){
	  		}
	  	});
	  })
	// end of autosend to user jazz




});
