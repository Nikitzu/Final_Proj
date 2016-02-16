// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.config(function($routeProvider) {
    $routeProvider.when('/', {
      redirectTo: '/main/all'
    }).when('/user', {
      controller: 'userCtrl',
      templateUrl: '../templates/user.html'
    }).when('/login/:action', {
      controller: 'RegistrationCtrl',
      templateUrl: '../app/registration.html'
    }).when('/main/:destination', {
      controller: 'mainCtrl',
      templateUrl: '../app/main.html'
    }).otherwise({
      redirectTo: '/'
    });
  });

}).call(this);

//# sourceMappingURL=mainRoute.js.map
