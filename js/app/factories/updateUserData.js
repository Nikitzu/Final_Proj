// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('updateFactory', function($http) {
    return function(user) {
      return $http.post('http://localhost:3000/update', user);
    };
  });

  app.factory('updateSettingsFactory', function($http) {
    return function(settings) {
      return $http.post('http://localhost:3000/updateuser', settings);
    };
  });

}).call(this);

//# sourceMappingURL=updateUserData.js.map
