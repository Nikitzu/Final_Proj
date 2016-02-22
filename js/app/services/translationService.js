// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.service('translationService', function(languageFactory) {
    this.translation = null;
    this.changeLanguage = function(lang) {
      this.translation = languageFactory(lang);
    };
  });

}).call(this);

//# sourceMappingURL=translationService.js.map