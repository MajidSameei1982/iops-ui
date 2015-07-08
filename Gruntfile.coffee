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
      app:
        files:
          'build/<%= pkg.name %>.js': ['build/src/app.js']
        options:
          external: ['jquery', 'underscore', 'backbone', 'marionette']
        
    # compile eco templates into global JST
    eco:
      build:
        options:
          basePath: 'client/src/templates/'
        files:
          'build/templates.js': ['client/src/templates/**/*.eco']

    # compile sass to css
    sass:
      build:
        files:
          'build/<%= pkg.name %>.css' : 'client/src/styles/app.scss'

    # compile coffeescript to js retaining structure
    coffee:
      build:
        expand: true
        flatten: false
        cwd: 'client/src'
        src: ['**/*.coffee']
        dest: 'build/src'
        ext: '.js'
        options:
          bare: true
        
    # concat vendor and app js files into a single package
    concat: 
      js:
        src: ['build/templates.js', 'build/<%= pkg.name %>.js']
        dest: 'build/<%= pkg.name %>.js'
      compact:
        src: ['build/vendor.js', 'build/<%= pkg.name %>.js']
        dest: 'build/<%= pkg.name %>.js'

    # move files to distribution targets
    copy: 
      js: 
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'public/js/<%= pkg.name %>.js'
        , 
          src: 'build/vendor.js'
          dest: 'public/js/vendor.js'
        ]
      css:
        files: [ 
          src: 'build/<%= pkg.name %>.css'
          dest: 'public/css/<%= pkg.name %>.css'
        ]
      static: 
        options:
          verbose: true
        files: [
          src: 'client/img/*'
          dest: 'public/img/'
        ,
          cwd: 'client'
          src: ['**/*.html']
          dest: 'public'
          expand: true
        ]

    # css minification.
    cssmin: 
      minify: 
        src: ['build/<%= pkg.name %>.css']
        dest: 'build/<%= pkg.name %>.min.css'

    # js minification.
    uglify:
      compile: 
        options: 
          compress: true
          verbose: false
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'build/<%= pkg.name %>.min.js'
        ,
          src: 'build/vendor.js'
          dest: 'build/vendor.min.js'
        ]
      
    # for changes to the front-end code
    watch: 
      js: 
        files: ['client/templates/*.eco', 'client/src/**/*.js', 'client/src/**/*.coffee']
        tasks: ['build:js', 'copy:js']
      css: 
        files: ['client/src/styles/**/*.scss']
        tasks: ['sass:build', 'copy:css']
      
    # for changes to the code
    concurrent: 
      dev: 
        tasks: ['watch:js', 'watch:css']
        options: 
          logConcurrentOutput: true

    # js linter
    # jshint: 
    #   all: ['Gruntfile.js', 'client/src/**/*.js']
    #   dev: ['client/src/**/*.js']

  grunt.registerTask('init:dev', ['clean:build', 'bower', 'build:dev']);

  grunt.registerTask('build:js', ['coffee:build', 'eco:build', 'browserify:vendor', 'browserify:app', 'concat:js']);
  grunt.registerTask('build:css', ['sass:build'])
  grunt.registerTask('build:dev', ['build:js', 'copy:js', 'build:css', 'copy:css', 'copy:static']);
  #grunt.registerTask('build:prod', ['clean:build', 'browserify:vendor', 'browserify:app', 'jshint:all', 'less:transpile', 'concat', 'cssmin', 'uglify', 'copy:prod']);

  grunt.registerTask('dev', ['clean:build', 'build:dev', 'concurrent:dev']);


  