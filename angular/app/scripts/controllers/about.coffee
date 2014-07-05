'use strict'

###*
 # @ngdoc function
 # @name angularCoffeeApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the angularCoffeeApp
###
angular.module('angularCoffeeApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = []
    console.log "AboutCtrl"
