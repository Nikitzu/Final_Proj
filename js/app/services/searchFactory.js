// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('searchFactory', function($http) {
    return function(text) {
      return $http.get('http://localhost:3000/search/' + text);
    };
  });

}).call(this);

//# sourceMappingURL=searchFactory.js.map
