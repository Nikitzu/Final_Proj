app = angular.module('myApp')

app.controller 'changeCtrl', [
  '$scope'
  '$css'
  'TranslationService'
  ($scope, $css, TranslationService) ->
#    $scope.translation = TranslationService.translation
    @translate = ->
      if @selectedLanguage == 'ru'
        @selectedLanguage = 'en'
      else
        @selectedLanguage = 'ru'
      TranslationService.switchLanguage(@selectedLanguage)
      console.log(TranslationService.translation)
      $scope.translation = TranslationService.translation
      return
    @selectedLanguage = 'en'
    @translate()

    @selectedTheme = 'light'
    @switchTheme = ->
      if @selectedTheme == 'light'
        @selectedTheme = 'dark'
      else
        @selectedTheme = 'light'
      if @selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
      return
    return
]