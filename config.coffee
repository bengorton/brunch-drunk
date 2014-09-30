exports.config =

  # See http://github.com/brunch/brunch/blob/master/docs/config.md for documentation.

  framework: 'AngularJS'

  modules:
    wrapper: no
    definition: no

  paths:
    jadeCompileTrigger: '.compile-jade'

  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js':  /^vendor/
      order:
        before: [
          'vendor/js/underscore.js'
          'vendor/js/angular/angular.js'
        ]
    jade:
      joinTo:
        '.compile-jade': /^app/


    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'styles/app.css': /^app/


    templates:
      joinTo:
        '.compile-jade': /^app/

  plugins:

    jade:
      pretty: yes

    stylus:
      linenos: false

    jade_angular:
      single_file: true
      modules_folder: 'templates'

    uglify:
      mangle: false
      compress:
        global_defs:
          DEBUG: false

    gzip:
      paths:
        javascript: 'js'
        stylesheet: 'styles'

    cleancss:
      keepSpecialComments: 0
      removeEmpty: true