app = angular.module('myApp')

app.controller 'infiniteScrolCtrl', ($scope) ->
  $scope.limit = 6
  $scope.loadMore = ->
    if $scope.posts.length > $scope.limit
      $scope.limit += 1
    return
  return
