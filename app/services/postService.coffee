app = angular.module('myApp')

app.service 'PostService', ['savePost', 'delPost',(savePost, delPost)->
  this.saveNewPost = (post) ->
    return savePost(post).then (data) ->
      return data.data

  this.deletePost = (post) ->
    return delPost(post).then (data) ->
      return data.data

  return
]