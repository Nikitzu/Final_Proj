app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    redirectTo: '/main/all/all')
  .when('/post/:postId',
    controller: 'viewTemplateController'
    templateUrl: '../app/postView.html')
  .when('/id/:id',
    redirectTo: '/main/id/:id')
  .when('/user',
    controller: 'contentCtrl'
    templateUrl: '../templates/user.html')
  .when('/login/:action',
    controller: 'RegistrationCtrl'
    templateUrl: '../app/registration.html')
  .when('/main/:destination/:param',
    controller: 'mainCtrl'
    templateUrl: '../app/main.html')
  .otherwise redirectTo: '/'
  return