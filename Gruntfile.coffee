module.exports = (grunt)->

  require('time-grunt')(grunt);
  require('load-grunt-tasks')(grunt);

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    # load up bower libs
    bower:
      install:
        options:
          targetDir: 'client/requires'
          layout: 'byComponent'
          cleanTargetDir: true
          verbose: true
      
    # clean out target directories
    clean: 
      build: ['build']
      public: ['public']
      
    # resolve references into aggregate libraries
    browserify:
      vendor: 
        src: ['client/requires/**/*.js']
        dest: 'build/vendor.js'
        options: 
          shim:
            jquery:
              path: 'client/requires/jquery/jquery.js'
              exports: '$'
            underscore:
              path: 'client/requires/underscore/js/underscore.js'
              exports: '_'
            backbone:
              path: 'client/requires/backbone/js/backbone.js'
              exports: 'Backbone'
              depends:
                jquery: '$'
                underscore: 'underscore'
            marionette:
              path: 'client/requires/backbone.marionette/js/backbone.marionette.js'
              exports: 'Marionette'
              depends:
                jquery: '$'
                backbone: 'Backbone'
                underscore: '_'
            bootstrap:
              path: 'client/requires/bootstrap-sass/bootstrap.js'
              exports: 'Bootstrap'
              depends:
                jquery: '$'
            'backbone.mutators':
              path: 'client/requires/backbone.mutators/backbone.mutators.js'
              exports: 'Mutators'
              depends:
                backbone: 'Backbone'
            
      app:
        files:
          'build/<%= pkg.name %>.js': ['build/src/app.js']
        options:
          external: ['jquery', 'underscore', 'backbone', 'marionette', 'bootstrap']      
      # widgets:
      #   files:
      #     'build/core_widgets.js': ['build/src/views/widgets/*.js']    
        
    # compile eco templates into global JST
    eco:
      build:
        options:
          basePath: 'client/src/templates/'
          jstGlobalCheck: true
        files:
          'build/templates.js': ['client/src/templates/**/*.eco']

    # compile sass to css
    sass:
      bootstrap:
        options: 
          style: 'expanded'
          compass: false
        files: 
          'client/requires/bootstrap-sass/bootstrap.css':'client/assets/scss/bootstrap.scss'
      build:
        files:
          'build/<%= pkg.name %>.css' : 'client/src/styles/app.scss'

    # compile coffeescript to js retaining structure
    coffee:
      build:
        expand: true
        flatten: false
        cwd: 'client/src'
        #src: ['**/*.coffee', '!views/widgets/*.coffee']
        src: ['**/*.coffee']
        dest: 'build/src'
        ext: '.js'
        options:
          bare: true
      # core_widgets:
      #   expand: true
      #   flatten: false
      #   cwd: 'client/src'
      #   src: ['views/widgets/*.coffee']
      #   dest: 'build/src'
      #   ext: '.js'
      #   options:
      #     bare: true
        
    # concat files
    concat: 
      js:
        src: [
          'build/templates.js'
          'build/<%= pkg.name %>.js'
        ]
        dest: 'build/<%= pkg.name %>.js'
      vendor_js:
        src: [
          'build/vendor.js'
          'client/assets/js/jquery.gridster.min.js'
          'client/requires/jsjws/jsrsasign-latest-all-min.js'
          'client/requires/basil.js/basil.js'
          'client/requires/chosen/chosen.jquery.min.js'
          'client/requires/jquery-dateFormat/jquery-dateFormat.js'
          'client/assets/js/opc-lib.min.js'
          'client/assets/js/lz-string.min.js'
          'client/assets/js/JustGage/raphael-2.1.4.min.js'
          'client/assets/js/JustGage/justgage.js'
          'client/assets/js/flot-master/jquery.flot.js'
          'client/assets/js/flot-master/jquery.flot.time.js'
          'client/assets/js/flot-master/jquery.flot.symbol.js'
          'client/assets/js/flot-master/jquery.flot.axislabels.js'
          'client/assets/js/bootstrap-toggle-master/js/bootstrap2-toggle.min.js'
        ]
        dest: 'build/vendor.js'
      vendor_css:
        src: [
          'client/requires/bootstrap-sass/bootstrap.css'
          'bower_components/font-awesome/css/font-awesome.css'
          'client/assets/adminlte/dist/css/AdminLTE.css'
          'client/assets/adminlte/dist/css/skins/_all-skins.css'
          'client/assets/css/jquery.gridster.min.css'
          'bower_components/chosen/chosen.min.css'
          'client/assets/css/opc-style.css'
          'client/assets/css/opc-alarm-style.css'
          'client/assets/js/bootstrap-toggle-master/css/bootstrap2-toggle.min.css'
        ]
        dest: 'build/vendor.css'
      
    # move files to distribution targets
    copy: 
      config_dev: 
        files: [
          src: 'client/config/appconfig.dev.coffee'
          dest: 'client/src/common/appconfig.coffee'
        ]
      config_test: 
        files: [
          src: 'client/config/appconfig.test.coffee'
          dest: 'client/src/common/appconfig.coffee'
        ]
      config_prod: 
        files: [
          src: 'client/config//appconfig.prod.coffee'
          dest: 'client/src/common/appconfig.coffee'
        ]
      js: 
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'public/js/<%= pkg.name %>.js'
        ]
      # widgets: 
      #   files: [
      #     src: 'build/core_widgets.js'
      #     dest: 'public/js/core_widgets.js'
      #   ]
      demo_widget: 
        files: [
          cwd: 'client/assets/js/demo_widget'
          src: ['*.js', '*.html']
          dest: 'public/js/demo_widget'
          expand: true
        ]
      vendor_js:
        files: [
          src: 'build/vendor.js'
          dest: 'public/js/vendor.js'
        ]
      css:
        files: [ 
          src: 'build/<%= pkg.name %>.css'
          dest: 'public/css/<%= pkg.name %>.css'
        ]
      vendor_css: 
        files: [
          src: 'build/vendor.css'
          dest: 'public/css/vendor.css'
        ]
      static: 
        files: [
          cwd: 'client/assets/img'
          src: ['**/*.png','**/*.jpg','**/*.gif']
          dest: 'public/img'
          expand: true
        ,
          cwd: 'client'
          src: ['**/*.html']
          dest: 'public'
          expand: true
        ,
          cwd: 'bower_components/chosen'
          src: ['*.png']
          dest: 'public/css'
          expand: true
        ,
          cwd: 'client/assets/js'
          src: ['app_config.js']
          dest: 'public/js'
          expand: true
        ,
          cwd: 'client/assets/ReportViewer'
          src: ['*.js', '*.html']
          dest: 'public/ReportViewer'
          expand: true
        ]
      vendor_static:
        files: [
          cwd: 'client/assets/js/datatables'
          src: ['**/*.*']
          dest: 'public/assets/datatables'
          expand: true
        ,
          cwd: 'bower_components/bootstrap-sass/assets/fonts/bootstrap/'
          src: ['**/*.*']
          dest: 'public/fonts/bootstrap'
          expand: true
        ,
          cwd: 'bower_components/font-awesome/fonts'
          src: ['**/*-webfont.*']
          dest: 'public/fonts'
          expand: true
        ,
          cwd: 'client/assets/adminlte/dist/img'
          src: ['**/*.png','**/*.jpg','**/*.gif']
          dest: 'public/assets/adminlte/img'
          expand: true
        ,
          cwd: 'client/assets/adminlte/plugins/iCheck'
          src: ['**/*.*']
          dest: 'public/assets/adminlte/plugins/iCheck'
          expand: true
        ]

    # css minification.
    cssmin: 
      css: 
        src: ['build/<%= pkg.name %>.css']
        dest: 'build/<%= pkg.name %>.css'
      vendor_css: 
        src: ['build/vendor.css']
        dest: 'build/vendor.css'

    # js minification.
    uglify:
      compile: 
        options: 
          compress: true
          verbose: false
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'build/<%= pkg.name %>.js'
        ,
          src: 'build/vendor.js'
          dest: 'build/vendor.js'
        ]
      
    # for changes to the front-end code
    watch: 
      config_dev:
        files: ['client/config/appconfig.dev.coffee']
        tasks: ['copy:config_dev', 'build:js']
      js: 
        files: ['client/src/**/*.eco', 'client/src/**/*.js', 'client/src/**/*.coffee']
        tasks: ['build:js', 'copy:js']
      css: 
        files: ['client/src/styles/**/*.scss']
        tasks: ['sass:build', 'copy:css']
      static:
        files: ['client/**/*.html','client/**/*.png','client/**/*.jpg','client/**/*.gif',]
        tasks: ['copy:static']

    open:
      dev:
        path: 'public/index.html'
        app: 'Google Chrome'
      
    # for changes to the code
    concurrent: 
      dev: 
        tasks: ['watch:config_dev', 'watch:js', 'watch:css', 'watch:static']
        options: 
          logConcurrentOutput: true

  
  grunt.registerTask('init:dev', ['clean', 'bower', 'build:vendor_js', 'build:js', 'build:css']);
  # build source
  grunt.registerTask('build:vendor_js', ['browserify:vendor']);
  #grunt.registerTask('build:js', ['coffee:build', 'coffee:core_widgets', 'eco:build', 'browserify:app', 'browserify:widgets', 'concat:vendor_js', 'concat:js']);
  grunt.registerTask('build:js', ['coffee:build', 'eco:build', 'browserify:app', 'concat:vendor_js', 'concat:js']);
  grunt.registerTask('build:css', ['sass:build', 'sass:bootstrap', 'concat:vendor_css'])
  # copy to runtime destination
  grunt.registerTask('deploy:vendor', ['copy:vendor_js', 'copy:vendor_css', 'copy:vendor_static'])
  #grunt.registerTask('deploy:dev', ['copy:js', 'copy:demo_widget', 'copy:css', 'copy:static'])
  grunt.registerTask('deploy:dev', ['copy:js', 'copy:css', 'copy:static'])
  
  # wipe the slate clean and start coding
  grunt.registerTask('dev', ['copy:config_dev', 'init:dev', 'deploy:vendor', 'deploy:dev', 'concurrent:dev']);
  # wipe clean and deploy test with minified resources
  grunt.registerTask('test', ['copy:config_test', 'init:dev', 'cssmin', 'uglify', 'deploy:vendor', 'deploy:dev']);
  # wipe clean and deploy prod with minified resources
  grunt.registerTask('prod', ['copy:config_prod', 'init:dev', 'cssmin', 'uglify', 'deploy:vendor', 'deploy:dev']);


  