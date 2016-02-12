app = angular.module('myApp')

app.controller 'translationCtrl', [
  '$scope'
  'translationService'
  ($scope, translationService) ->

    @translate = ->
      translationService.getTranslation $scope, @selectedLanguage
      return
    console.log @selectedLanguage
    @selectedLanguage = 'en'
    @translate()
    return
]

app.service 'translationService', ($resource) ->

  @getTranslation = ($scope, language) ->
    languageFilePath = '../app/controllers/translation_' + language + '.json'
    console.log languageFilePath
    $resource(languageFilePath).get (data) ->
      console.log data
      $scope.translation = data
      return
    return

  return