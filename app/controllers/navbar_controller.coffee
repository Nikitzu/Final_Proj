app = angular.module('myApp')

app.controller 'NavBarController', ['$scope', 'logoutUser', 'searchFactory', 'getUser', ($scope, logoutUser, searchFactory, getUser)->
  $scope.logout = ->
    logoutUser().then ->
      window.location.href = 'http://localhost:8000/app/#/'
      return
  $scope.user = null
  getUser().then (data) ->
    $scope.user = data

  $scope.searchText = ""
  $scope.searching = () ->
    searchFactory($scope.searchText).then( (data) ->
      console.log(data.data)
      $scope.searchText = ''
    )

  return
]