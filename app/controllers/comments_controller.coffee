app = angular.module('myApp')

app.controller 'viewCommentCtrl', ($scope) ->

  $scope.reviews = []

  $scope.rate = 0
  return

app.controller 'addCommentCtrl', ['$scope','getUser', ($scope, getUser) ->
  getUser().then (data) ->
    $scope.user = data.data

    $scope.viewComment =
      rate: $scope.rate
      author: $scope.user.firstName + ' ' + $scope.user.lastName

    $scope.createNewReview = ->
      $scope.viewComment =
        rate: $scope.rate
        author: $scope.user.firstName + ' ' + $scope.user.lastName
      return

    $scope.addReview = ->
      console.log("ADDREVIEW")
      $scope.reviews.push $scope.viewComment
      $scope.createNewReview()
      return

  return
]