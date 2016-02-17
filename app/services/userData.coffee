app = angular.module('myApp')

app.service 'UserDataService', ['getUser', (getUser)->
  this.user = null
  console.log("hey")
  this.loadUser = () ->
    return getUser.then (data) ->
      console.log(data)
      return data.data
  return
]