app = angular.module('myApp')

app.factory 'postComment', ($http) ->
  (comment) ->
    $http.post('http://localhost:3000/comment/save', comment)
app.factory 'getComments', ($http) ->
  (id) ->
    $http.post('http://localhost:3000/comment/all', {id: id})
app.factory 'likeComment', ($http) ->
  (id) ->
    $http.post('http://localhost:3000/comment/like', {id: id})


app.controller 'viewCommentCtrl', ['$scope', 'getComments', 'likeComment', ($scope, getComments, likeComment) ->
  $scope.commentsPromise = $scope.postPromise.then ->
    getComments($scope.post.id).then (comments)->
      $scope.reviews = comments.data
      return
  $scope.like = (id) ->
    console.log('LIKE')
    likeComment(id).then ->
      console.log('LIKE NEBEDA')
    , ->
      console.log('LIKE BEDA')
      return
    return
  return
]
app.controller 'addCommentCtrl', ['$scope','getUser', 'postComment', ($scope, getUser, postComment) ->
  getUser().then (data) ->
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
      , ->
        console.log "BEDA"
      return

  return
]