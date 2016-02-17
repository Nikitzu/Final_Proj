app = angular.module('myApp')

app.controller 'viewCommentCtrl', ($scope) ->
  $scope.reviews = []
  $scope.author = 'Artur'
  $scope.rate = 0
  return

app.controller 'addCommentCtrl', ($scope) ->
  @viewComment =
    rate: $scope.rate
    author: $scope.author

  @createNewReview = ->
    @viewComment =
      rate: $scope.rate
      author: $scope.author
    return

  @addReview = ->
    $scope.reviews.push @viewComment
    @createNewReview()
    console.log $scope.reviews
    return

  return
