app = angular.module 'myApp'

app.service 'translationService', (languageFactory)->
  @translation = null
  @changeLanguage = (lang) ->
    @translation = languageFactory(lang)
    return
  return