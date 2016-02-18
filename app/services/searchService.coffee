app = angular.module('myApp')

app.service 'SearchService', ['searchFactory', (searchFactory)->
  this.posts = "hello"
  @loadResults = (text, posts = this.posts) ->
    return searchFactory(text).then (data) ->
      console.log('BEFORE', posts)
      posts = data.data
      console.log('AFTER',this.posts)
      return data.data
  return
]