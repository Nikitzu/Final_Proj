app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    redirectTo: '/main/all/all')
  .when('/post/:postId',
    controller: 'postView'
    templateUrl: '../app/postView.html')
  .when('/id/:id',
    redirectTo: '/main/id/:id')
  .when('/user',
    controller: 'publicationsController'
    templateUrl: '../templates/user.html')
  .when('/login/:action',
    controller: 'registration'
    templateUrl: '../app/registration.html')
  .when('/main/:destination/:param',
    controller: 'mainController'
    templateUrl: '../app/main.html')
  .otherwise redirectTo: '/'
  return