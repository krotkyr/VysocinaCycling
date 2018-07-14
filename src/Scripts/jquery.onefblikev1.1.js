/*
	jQuery OneFBLike v1.1 - http://onerutter.com/open-source/jquery-facebook-like-plugin.html
	Copyright (c) 2010 Jake Rutter
	This plugin available for use in all personal or commercial projects under both MIT and GPL licenses.
*/

(function($){  
jQuery.fn.onefblike = function(options) {

  //Set the default values, use comma to separate the settings
  //ID aplikace Vyso�ina cycling 
  var defaults = {
      appID: '199074833507119',
	//siteTitle: 'Vyso�ina Cycling',
	//siteName: 'vysocinacycling',
    //siteImage: '/images/VCLogo1.png',
    //siteDescription: 'Tento projekt je zam��en na podporu v�konnostn� cyklistiky na Vyso�in�, a to p�edev��m cyklistiky silni�n�. Nebr�n�me se ani dal��m discipl�n�m, p�edev��m horsk�m kol�m, na kter�ch jezd� na Vyso�in� spousta cyklist�. Tr�ninkov� metody jsou toti� pro ob� discipl�ny velmi podobn�.',

	buttonWidth: 450,
	buttonHeight: 60,
	showfaces: true,
	font: 'lucida grande',
	layout: 'button_count',
	action: 'like',
	colorscheme: 'light',
    dynUrl: document.location
}  
            
var options =  $.extend(defaults, options);  
                        
  return this.each(function() {  
  var o = options;  
  var obj = $(this);
  
  // Add Meta Tags for additional data - options
  jQuery('head').append('<meta property="og:title" content="'+o.siteTitle+'"/>');
  jQuery('head').append('<meta property="og:site_name" content="'+o.siteName+'"/>');
  jQuery('head').append('<meta property="og:image" content="' + o.siteImage + '"/>');
  jQuery('head').append('<meta property="og:description" content="' + o.siteDescription + '"/>');
  
  // Add #fb-root div - mandatory - do not remove
  jQuery('body').append('<div id="fb-root"></div>');
  jQuery('#fb-like iframe').css('height','35px !important');
  
  // setup FB Developers App Link - do not touch
  window.fbAsyncInit = function() {
      FB.init({appId: o.appID, status: true, cookie: true, xfbml: true});
  };
  (function() {
      var e = document.createElement('script'); e.async = true;
      e.language = "JavaScript";
    e.src = document.location.protocol + '//connect.facebook.net/cs_CZ/all.js';
    jQuery('#fb-root').append(e);
  }());
                                
                              
  // Apply the like button to an element on the page and include all available options
  // If no options are passed in from the page, the defaults will be applied            
  jQuery(obj).html('<fb:like href="'+o.dynUrl+'" width="'+o.buttonWidth+'" height="'+o.buttonHeight+'" show_faces="'+o.showfaces+'" font="'+o.font+'" layout="'+o.layout+'" action="'+o.action+'" colorscheme="'+o.colorscheme+'"/>');

  });  
}  
})(jQuery);