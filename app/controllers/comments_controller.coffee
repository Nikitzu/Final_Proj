app = angular.module('myApp')

app.controller 'viewCommentCtrl', ($scope) ->

  $scope.reviews = []

  $scope.rate = 0
  return

app.controller 'addCommentCtrl', ['$scope','getUser', ($scope, getUser) ->
  getUser().then (data) ->
    $scope.user = data.data

  @viewComment =
    rate: $scope.rate
    author: $scope.user.firstName

  @createNewReview = ->
    @viewComment =
      rate: $scope.rate
      author: $scope.user.firstName
    return

  @addReview = ->
    $scope.reviews.push @viewComment
    @createNewReview()
    return

  return
]