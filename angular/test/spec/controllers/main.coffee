'use strict'

describe 'Controller: MainCtrl', ->

  # load the controller's module
  beforeEach module 'angularCoffeeApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should have no items to start', ->
    expect(scope.todos.length).toBe 0

  it 'should add an item to list', ->
    scope.todo = 'test 1'
    scope.addTodo()
    expect(scope.todos.length).toBe 1

  it 'should add then remove an item from list', ->
    scope.todo = 'test 1'
    scope.addTodo()
    scope.removeTodo(0)
    expect(scope.todos.length).toBe 0
