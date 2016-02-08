// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.config(function($routeProvider) {
    $routeProvider.when('/', {
      controller: 'mainCtrl',
      templateUrl: '../app/main.html'
    }).when('/registry', {
      controller: 'RegistrationCtrl',
      templateUrl: '../app/registration.html'
    }).when('/user', {
      controller: 'userCtrl',
      templateUrl: '../templates/user.html'
    }).when('/login', {
      controller: 'RegistrationCtrl',
      templateUrl: '../app/registration.html'
    }).otherwise({
      redirectTo: '/'
    });
  });

}).call(this);

//# sourceMappingURL=mainRoute.js.map
