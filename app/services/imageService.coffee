app = angular.module('myApp')

app.service 'ImageService', ->
  @imagelist = []
  @file = {}
  @image = {}
  return