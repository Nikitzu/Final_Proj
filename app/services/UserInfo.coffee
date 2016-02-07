app = angular.module('myApp')

app.factory 'userInfo', ->
  {
    name: ''
    surname: ''
    email: ''
    password: ''
    about: ''
  }