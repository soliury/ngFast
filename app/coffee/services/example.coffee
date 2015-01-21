servicesModule = require './index'


ExampleService = ($q, $http)->
  service = {}
  service.get = ->
    deferred = $q.defer()

    $http.get 'apiPath'
    .success (data)->
      deferred.resolve data
    .error (err, status)->
      deferred.reject err, status

  return service

ExampleService.$inject =['$q', '$http']

servicesModule.service 'ExampleService', ExampleService