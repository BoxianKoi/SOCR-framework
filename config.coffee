exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: /(^vendor\\.*\.less)|(^vendor\/.*\.less)|(^|\/)node_modules\/|(^|\/)_/
    assets: /^app\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/scenarios.js': /^test(\/|\\)e2e/
      order:
        before: [
          # ###
          #   AngularJs support libraries
          # ###
          'vendor/angular/angular.js'
          'vendor/angular-resource/angular-resource.js'
          'vendor/angular-cookies/angular-cookies.js'
          'vendor/angular-sanitize/angular-sanitize.js'
          'vendor/angular-ui-states/angular-ui-states.js'
          'vendor/jquery/jquery.js'
          'vendor/bootstrap/docs/assets/js/bootstrap.js'

#          'vendor/angular-ui/angular-ui.js'
#          'vendor/angular-ui/angular-ui-ieshiv.js'
#          'vendor/angular-ui/ng-grid/ng-grid.js'
          'vendor/angular-ui/bootstrap/ui-bootstrap-tpls-0.2.0.js'
          'vendor/console-polyfill/index.js'



        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
      order:
        before: [
          'app/styles/app.less'
        ]
    templates:
      joinTo:
        'js/dontUseMe' : /^app/ # dirty hack for Jade compiling.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      modules_folder: 'partials'
      locals: {}

    bower:
      extend:
        "bootstrap" : 'vendor/bootstrap/docs/assets/js/bootstrap.js'
        "angular-mocks": []
        "styles": []
      asserts:
        "img" : /bootstrap(\\|\/)img/
        "font": /font-awesome(\\|\/)font/

  # Enable or disable minifying of result js / css files.
  # minify: true
