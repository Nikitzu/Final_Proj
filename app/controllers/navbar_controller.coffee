app = angular.module('myApp')

app.controller 'NavBarController', ['$scope', 'logoutUser', 'SearchService', 'getUser', ($scope, logoutUser, SearchService, getUser)->
  $scope.logout = ->
    logoutUser().then ->
      window.location.href = 'http://localhost:8000/app/#/'
      return
  $scope.user = null
  getUser().then (data) ->
    $scope.user = data

  $scope.searchText = ""
  $scope.searching = () ->
    SearchService.loadResults($scope.searchText).then (data) ->
      $scope.searchText = ''
      SearchService.posts = data
      window.location.href = 'http://localhost:8000/app/#/'
      return
    return

  return
]