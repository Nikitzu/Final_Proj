app = angular.module('myApp')

app.service 'SearchService', ['searchFactory', (searchFactory)->
  this.posts = null
  this.loadResults = (text) ->
    return searchFactory(text).then (data) ->
      return data.data
  return
]