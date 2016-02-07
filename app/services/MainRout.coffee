app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    controller: 'mainCtrl'
    templateUrl:'../app/main.html')
  .when('/registry',
    controller: 'registrationCtrl'
    templateUrl: '../app/registration.html')
  .when('/user',
    controller: 'userCtrl'
    templateUrl: '../templates/user.html')
  .otherwise redirectTo: '/'
  return