'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/view1', {templateUrl: '/sections/view1/view1.jade'})
    .when('/view2', {templateUrl: '/sections/view2/view2.jade'})

    # Catch all
    .otherwise({redirectTo: '/view1'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
