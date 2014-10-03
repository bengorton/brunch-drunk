app.directive 'viewTwo', ($log, $rootScope, $state, $timeout) ->
  exports =
    restrict: 'A'

    link: (scope, el, attrs) ->
      $log.info "hello from view 2"
      




