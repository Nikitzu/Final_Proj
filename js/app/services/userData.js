// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('UserData', [
    '$http', function($http) {
      return $http.get('http://').success(function(data) {
        return data;
      }).error(function(err) {
        return err;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=userData.js.map
