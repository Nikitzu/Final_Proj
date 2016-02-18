app = angular.module('myApp')

app.controller 'changeCtrl', [
  '$scope'
  '$css'
  'TranslationService'
  "changeFactory"
  ($scope, $css, TranslationService, changeFactory) ->
    @translate = ->
      if @selectedLanguage == 'ru'
        @selectedLanguage = 'en'
      else
        @selectedLanguage = 'ru'

      changeFactory
        theme: @selectedTheme
        language: @selectedLanguage

      TranslationService.switchLanguage(@selectedLanguage)
      $scope.translation = TranslationService.translation
      return
    @selectedLanguage = 'ru'
    @translate()

    @selectedTheme = 'light'
    @switchTheme = ->
      if @selectedTheme == 'light'
        @selectedTheme = 'dark'
      else
        @selectedTheme = 'light'

      changeFactory
        theme: @selectedTheme
        language: @selectedLanguage

      if @selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
      return
    return
]