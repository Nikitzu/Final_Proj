app = angular.module('myApp')

app.controller 'viewCommentCtrl', ($scope) ->

  $scope.reviews = []
  return

app.controller 'addCommentCtrl', ['$scope','getUser', ($scope, getUser) ->
  getUser().then (data) ->
    $scope.user = data.data

    $scope.viewComment =
      author: $scope.user.firstName + ' ' + $scope.user.lastName

    $scope.createNewReview = ->
      $scope.viewComment =
        author: $scope.user.firstName + ' ' + $scope.user.lastName
      return

    $scope.addReview = ->
      console.log("ADDREVIEW")
      $scope.reviews.push $scope.viewComment
      $scope.createNewReview()
      return

  return
]