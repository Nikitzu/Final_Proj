app = angular.module('myApp')

app.service 'PostService', ['savePost', 'delPostFactory',(savePost, delPostFactory)->
  this.saveNewPost = (post) ->
    return savePost(post).then (data) ->
      return data.data

  this.deletePost = (post) ->
    return delPost(post).then (data) ->
      return data.data

  return
]