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
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
