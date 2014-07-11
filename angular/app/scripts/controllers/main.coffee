'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularCoffeeApp
###
angular.module('angularCoffeeApp')
  .controller 'MainCtrl', ($scope, TodoService) ->
    #$scope.todos = []
    #$scope.todos = TodoService().all()
    $scope.todosrv = new TodoService()
    $scope.todos = $scope.todosrv.all()
    console.log($scope.todos)

    $scope.addTodo = ->
      console.log($scope.todo)
      newTodo = $scope.todosrv.create($scope.todo)
      $scope.todos.push(newTodo)
      console.log("newTodo: ", newTodo)
      $scope.todo = ''
      console.log($scope.todos)

    $scope.removeTodo = (todo, index) ->
      $scope.todosrv.destroy(todo)
      $scope.todos.splice(index, 1)
