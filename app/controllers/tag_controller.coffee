app = angular.module('myApp')

app.controller 'controller', ($scope) ->
  $scope.words = [
    {
      text: 'Lorem'
      weight: 13
    }
    {
      text: 'Ipsum'
      weight: 10.5
    }
    {
      text: 'Dolor'
      weight: 9.4
    }
    {
      text: 'Sit'
      weight: 8
    }
    {
      text: 'Amet'
      weight: 6.2
    }
    {
      text: 'Consectetur'
      weight: 5
    }
    {
      text: 'Adipiscing'
      weight: 5
    }
    {
      text: 'Elit'
      weight: 5
    }
    {
      text: 'Nam et'
      weight: 5
    }
    {
      text: 'Leo'
      weight: 4
    }
    {
      text: 'Sapien'
      weight: 4
    }
    {
      text: 'Pellentesque'
      weight: 3
    }
    {
      text: 'habitant'
      weight: 3
    }
    {
      text: 'morbi'
      weight: 3
    }
    {
      text: 'tristisque'
      weight: 3
    }
    {
      text: 'senectus'
      weight: 3
    }
    {
      text: 'et netus'
      weight: 3
    }
    {
      text: 'et malesuada'
      weight: 3
    }
  ]
  $scope.colors = [
    '#800026'
    '#bd0026'
    '#e31a1c'
    '#fc4e2a'
    '#fd8d3c'
    '#feb24c'
    '#fed976'
  ]

  return