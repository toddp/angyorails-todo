'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularCoffeeApp
###
angular.module('angularCoffeeApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.todos = ['Item 1', 'Item 2', 'Item 3', 'Item 4']

    $scope.addTodo = ->
      console.log($scope.todo)
      $scope.todos.push($scope.todo)
      $scope.todo = ''
      console.log($scope.todos)

    $scope.removeTodo = (index) ->
      $scope.todos.splice(index, 1)