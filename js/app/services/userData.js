// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('UserData', [
    '$http', function($http) {
      return $http.get('http://local.host:3000/host').error(function(err) {
        return console.log(err);
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=userData.js.map
