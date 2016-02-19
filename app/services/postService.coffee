app = angular.module('myApp')

app.service 'PostService', ['savePost', (savePost)->
  this.saveNewPost = (post) ->
    return savePost(post).then (data) ->
      return data.data
  return
]