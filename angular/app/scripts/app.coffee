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
    'ngRoute',
    'ngAnimate',
    'ngCookies',
    'ngSanitize',
    'ngTouch'
  ])
  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])


