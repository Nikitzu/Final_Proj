// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('UserPublications', [
    '$http', function($http) {
      return $http.get('http://local.host:3000/publications');
    }
  ]);

}).call(this);

//# sourceMappingURL=userPublications.js.map