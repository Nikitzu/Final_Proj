app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    controller: 'MyCtr'
    templateUrl:'../app/index.html')
  .when('/registry',
    controller: 'MyCtr'
    templateUrl: '../app/registration.html')
  .when('/user',
    controller: 'MyCtr'
    templateUrl: '../templates/user.html')
  .otherwise redirectTo: '/'
  return