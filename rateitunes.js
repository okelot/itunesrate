 (function(){
  
  /* Get local ref to global PhoneGap/Cordova/cordova object for exec function.
   - This increases the compatibility of the plugin. */
  var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
  
  
  function rateitunes() { }
  
 
  rateitunes.prototype.go = function(appid) {
  cordovaRef.exec("RateItunes.openItunesRate", appid);
  };
  

  
  
  cordovaRef.addConstructor(function() {
                            if(!window.plugins) {
                            window.plugins = {};
                            }
                            if(!window.plugins.badge) {
                            window.plugins.rateitunes = new rateitunes();
                            }
                            });
  
  })(); 