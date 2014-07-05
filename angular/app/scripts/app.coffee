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
    'ngTouch',
    'ui.sortable'
  ])

  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])
  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when('/about', { templateUrl: '../views/about.html', controller: 'AboutCtrl' } )
    
    #default route
    $routeProvider.otherwise({ templateUrl: '../main.html', controller: 'Maintrl' } )
    console.log('router started')
  ])
