app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    controller: 'mainCtrl'
    templateUrl:'../app/main.html')
  .when('/user',
    controller: 'userCtrl'
    templateUrl: '../templates/user.html')
  .when('/login/:action',
    controller: 'RegistrationCtrl'
    templateUrl: '../app/registration.html')
  .otherwise redirectTo: '/'
  return