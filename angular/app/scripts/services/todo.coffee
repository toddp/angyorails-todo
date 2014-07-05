'use strict'

###*
 # @ngdoc service
 # @name angularCoffeeApp.todo
 # @description
 # # todo
 # Factory in the angularCoffeeApp.
###
angular.module('angularCoffeeApp')
  .factory 'TodoService', ($resource) ->
    class TodoService
      constructor: () ->
        @service = $resource('http://localhost:3000/todos/:id.json', {id: '@id'})
        console.log('Todo factory')

      create: (attrs) -> 
        new @service(todo: attrs).$save (todo) ->
          attrs.id = todo.$id
        attrs


      all: -> 
        @service.query()

