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
          'vendor/scripts/console-helper.js'
          'vendor/scripts/angular/angular.js'

          # ###
          #   AngularJs support libraries
          # ###
          'vendor/script/angular/angular-ui-states.js'
          'vendor/scripts/angular-ui/angular-ui.js'
          'vendor/scripts/angular-ui/angular-ui-ieshiv.js'
          'vendor/scripts/angular-ui/ng-grid/ng-grid.js'
          'vendor/scripts/angular-ui/bootstrap/ui-bootstrap-tpls-0.2.0.js'
          'vendor/console-polyfill/index.js'
          'vendor/jquery/jquery.js'
          'vendor/angular/angular.js'
          'vendor/angular-resource/angular-resource.js'
          'vendor/angular-cookies/angular-cookies.js'
          'vendor/angular-sanitize/angular-sanitize.js'
          'vendor/bootstrap/docs/assets/js/bootstrap.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
    templates:
      joinTo: 'js/templates.js'
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
