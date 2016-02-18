app = angular.module('myApp')

app.service 'PostService', ['savePost', (savePost)->
  this.mapCoordinates =
    currentX: 0
    currentY: 0
    pointX: 0
    pointY: 0
  this.saveNewPost = (post) ->
    return savePost(post).then (data) ->
      return data.data
  return
]