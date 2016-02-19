// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.config(function($routeProvider) {
    $routeProvider.when('/', {
      redirectTo: '/main/all/all'
    }).when('/post/:postId', {
      controller: 'viewTemplateController',
      templateUrl: '../app/postView.html'
    }).when('/id/:id', {
      redirectTo: '/main/id/:id'
    }).when('/user', {
      controller: 'contentCtrl',
      templateUrl: '../templates/user.html'
    }).when('/login/:action', {
      controller: 'RegistrationCtrl',
      templateUrl: '../app/registration.html'
    }).when('/main/:destination/:param', {
      controller: 'mainCtrl',
      templateUrl: '../app/main.html'
    }).otherwise({
      redirectTo: '/'
    });
  });

}).call(this);

//# sourceMappingURL=mainRoute.js.map
