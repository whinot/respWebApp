/**
 * http://usejsdoc.org/
 */

jQuery.noConflict();

if (typeof jQuery == 'undefined') {
  console.log('jQuery hasn\'t loaded');
} else {
  console.log('jQuery has loaded');
}

jQuery(function($){
	$('.table').footable({
	});
});