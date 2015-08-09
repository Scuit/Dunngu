// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function(){
	if ($('.general #category_id')) {
		$('body').on('change', '.general #category_id', function(event) {
			var selected_resource_id = $(this).val();
			$.ajax({url:'/seleccionar_subcategoria',
				type: 'POST',
				data: { category_id : selected_resource_id }
			});
		});
	};
	if ($('.general #region_id')) {
		$('body').on('change', '.general #region_id', function(event) {
			var selected_resource_id = $(this).val();
			$.ajax({url:'/seleccionar_provincia',
				type: 'POST',
				data: { region_id : selected_resource_id }
			});
		});
	};

	if ($('.normal #category_id')) {
		$('body').on('change', '.normal #category_id', function(event) {
			var selected_resource_id = $(this).val();
			$.ajax({url:'/seleccionar_subcategoria',
				type: 'POST',
				data: { 
					category_id : selected_resource_id,
					normal : '1'
				}
			});
		});
	};
	if ($('.normal #region_id')) {
		$('body').on('change', '.normal #region_id', function(event) {
			var selected_resource_id = $(this).val();
			$.ajax({url:'/seleccionar_provincia',
				type: 'POST',
				data: { 
					region_id : selected_resource_id,
					normal : '1'
				}
			});
		});
	};
});