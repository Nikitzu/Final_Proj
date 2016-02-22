app = angular.module('myApp')

app.controller 'viewComments', ['$scope', 'getComments', 'likeComment', ($scope, getComments, likeComment) ->
  $scope.commentsPromise = $scope.postPromise.then ->
    getComments($scope.post.id).then (comments)->
      $scope.reviews = comments.data
      return
  $scope.like = (review) ->
    if !review.likeable
    then return
    review.likes += 1
    review.likeable = false
    likeComment(review.id)
    return
  return
]

app.controller 'addComments', ['$scope','getUserData', 'postComment', ($scope, getUserData, postComment) ->
  getUserData().then (data) ->
    $scope.user = data.data
    $scope.createNewReview = ->
      $scope.viewComment =
        author: $scope.user
        id: $scope.post.id
      return

    $scope.postPromise.then ->
      $scope.createNewReview()

    $scope.addReview = ->
      postComment($scope.viewComment)
      .then (comment)->
        $scope.reviews.push comment.data
        $scope.createNewReview()
        return
  return
]