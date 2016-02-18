app = angular.module 'myApp'

app.service 'TranslationService', (langFactory)->
  @translation = null
  @switchLanguage = (lang) ->
    @translation = langFactory(lang)
    return
  return