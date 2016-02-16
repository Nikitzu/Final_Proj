app = angular.module 'myApp'

app.service 'TranslationService', (langFactory)->
  @translation = null
  @switchLanguage = (lang) ->
    console.log('SWITCHED', lang)
    @translation = langFactory(lang)
    return
  return