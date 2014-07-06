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
    'ngRoute'
    'ngResource'
    'ngAnimate'
    'ngCookies'
    'ngSanitize'
    'ngTouch'
    'ui.sortable'
  ])

  .config(['$httpProvider', ($httpProvider) ->
    #$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
    #set up CORS...
    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common['X-Requested-With']
  ])
  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when('/about', { templateUrl: '../views/about.html', controller: 'AboutCtrl' } )
    
    #default route
    $routeProvider.otherwise({ templateUrl: 'views/main.html', controller: 'MainCtrl' } )
    console.log('router started')
  ])
