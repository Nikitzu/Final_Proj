// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('sendRating', function($http) {
    return function(rating) {
      return $http.post('http://localhost:3000/rate', rating);
    };
  });

}).call(this);

//# sourceMappingURL=sendRating.js.map
