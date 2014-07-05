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
    todosrv = new TodoService()
    $scope.todos = todosrv.all()
    console.log($scope.todos)

    $scope.addTodo = ->
      console.log($scope.todo)
      $scope.todos.push($scope.todo)
      $scope.todo = ''
      console.log($scope.todos)

    $scope.removeTodo = (index) ->
      $scope.todos.splice(index, 1)
