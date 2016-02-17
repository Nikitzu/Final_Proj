app = angular.module('myApp')

app.service 'SearchService', ['searchFactory', (searchFactory)->
  this.posts = "hello"
  this.setPosts = (posts) ->
    this.posts = posts
  this.getPosts = () ->
    this.posts
  @loadResults = (text, posts = this.posts) ->
    return searchFactory(text).then (data) ->
      console.log('BEFORE', posts)
      posts = data.data
      console.log('AFTER',posts)
      return data.data
  return
]