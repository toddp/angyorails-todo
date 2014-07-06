'use strict'

describe 'Service: TodoService', ->

  # load the service's module
  beforeEach module 'angularCoffeeApp'

  # instantiate service
  todo = {}
  beforeEach inject (TodoService) ->
    todo = TodoService

  it 'should do something', ->
    expect(!!todo).toBe true
