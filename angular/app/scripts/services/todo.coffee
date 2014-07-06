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
        todo =
            description: attrs.description

        new @service(todo).$save (todo) ->
          attrs.id = todo.$id
        attrs


      destroy: (index) ->
        new @service(id: index).$delete (todo) ->
          console.log('deleted todo')

      all: -> 
        @service.query()

