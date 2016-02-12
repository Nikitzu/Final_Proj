app = angular.module('myApp')

app.controller 'changeCtrl', [
  '$scope'
  'translationService'
  '$css'
  ($scope, translationService, $css) ->

    @translate = ->
      translationService.getTranslation $scope, @selectedLanguage
      return
    console.log @selectedLanguage
    @selectedLanguage = 'en'
    @translate()

    @selectedTheme = 'light'
    @switchTheme = ->
      if @selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
      return
      @switchTheme()
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