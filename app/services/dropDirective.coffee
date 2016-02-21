app = angular.module('myApp')

app.directive 'dropDirective', [
  'ImageService'
  (ImageService) ->
    {
      restrict: 'AE'
      link: (scope, elem) ->
        elem.bind 'dragenter', (event) ->
          elem.textContent = ''
          event.stopPropagation()
          event.preventDefault()
          return
        elem.bind 'dragover', (event) ->
          event.stopPropagation()
          event.preventDefault()
          return
        elem.bind 'drop', (event) ->
          event.stopPropagation()
          event.preventDefault()
          dt = event.dataTransfer or event.originalEvent and event.originalEvent.dataTransfer
          files = event.target.files or dt and dt.files
          i = 0
          f = undefined
          while f = files[i]
            reader = new FileReader
            reader.readAsDataURL f
            reader.onload = ((theFile) ->
              (e) ->
                newFile =
                  name: theFile.name
                  type: theFile.type
                  size: theFile.size
                  lastModifiedDate: theFile.lastModifiedDate
                ImageService.imagelist.pop()
                ImageService.imagelist.push
                  stats: newFile
                  file: theFile
                  URL: URL.createObjectURL(theFile)
                  base64: reader.result

                ImageService.image = ImageService.imagelist[ImageService.imagelist.length - 1]
                scope.$apply()
                return
            )(f)
            i++
          return
        return

    }
]