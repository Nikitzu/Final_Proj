app = angular.module('myApp')

app.controller 'ImageListController', ($scope, ImageService, States) ->
  $scope.images = ImageService.imagelist
  $scope.image = ImageService.image
  $scope.remove = ->
    ImageService.imagelist[0] =[]
    return

  $scope.selected = undefined
  $scope.states = States

  return


app.factory 'States', ->
  states = [
    'Alabama'
    'Alaska'
    'Arizona'
    'Arkansas'
    'California'
    'Colorado'
    'Connecticut'
    'Delaware'
    'Florida'
    'Georgia'
    'Hawaii'
    'Idaho'
    'Illinois'
    'Indiana'
    'Iowa'
    'Kansas'
    'Kentucky'
    'Louisiana'
    'Maine'
    'Maryland'
    'Massachusetts'
    'Michigan'
    'Minnesota'
    'Mississippi'
    'Missouri'
    'Montana'
    'Nebraska'
    'Nevada'
    'New Hampshire'
    'New Jersey'
    'New Mexico'
    'New York'
    'North Dakota'
    'North Carolina'
    'Ohio'
    'Oklahoma'
    'Oregon'
    'Pennsylvania'
    'Rhode Island'
    'South Carolina'
    'South Dakota'
    'Tennessee'
    'Texas'
    'Utah'
    'Vermont'
    'Virginia'
    'Washington'
    'West Virginia'
    'Wisconsin'
    'Wyoming'
  ]
  states