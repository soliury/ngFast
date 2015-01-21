directivesModule = require './index'

exampleDirective = ->
  directive =
    restrict: 'EA'
    link: ($scope, $element)->
      $element.on 'click', ->
        console.log 'element clicked'



directivesModule.directive 'exampleDirective', exampleDirective
