'use strict'

###*
 # @ngdoc overview
 # @name angularCoffeeApp
 # @description
 # # angularCoffeeApp
 #
 # Main module of the application.
###
angular
  .module('angularCoffeeApp', [
    'ngAnimate',
    'ngCookies',
    'ngSanitize',
    'ngTouch',
    'ng-route'
  ])
  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])


