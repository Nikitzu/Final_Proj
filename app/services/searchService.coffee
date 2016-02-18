app = angular.module('myApp')

app.service 'SearchService', ['searchFactory', (searchFactory)->
  this.posts = null
  @loadResults = (text, posts = this.posts) ->
    return searchFactory(text).then (data) ->
      return data.data
  return
]