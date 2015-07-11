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
            
      app:
        files:
          'build/<%= pkg.name %>.js': ['build/src/app.js']
        options:
          external: ['jquery', 'underscore', 'backbone', 'marionette', 'bootstrap']
        
    # compile eco templates into global JST
    eco:
      build:
        options:
          basePath: 'client/src/templates/'
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
        src: ['**/*.coffee']
        dest: 'build/src'
        ext: '.js'
        options:
          bare: true
        
    # concat files
    concat: 
      js:
        src: ['build/templates.js', 'build/<%= pkg.name %>.js']
        dest: 'build/<%= pkg.name %>.js'
      vendor_css:
        src: ['client/requires/bootstrap-sass/bootstrap.css', 'client/requires/font-awesome/font-awesome.css']
        dest: 'build/vendor.css'
      
    # move files to distribution targets
    copy: 
      js: 
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'public/js/<%= pkg.name %>.js'
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
          src: 'client/img/*'
          dest: 'public/img/'
        ,
          cwd: 'client'
          src: ['**/*.html']
          dest: 'public'
          expand: true
        ]
      vendor_static:
        files: [
          cwd: 'bower_components/bootstrap-sass/assets/fonts/bootstrap/'
          src: ['**/*.*']
          dest: 'public/fonts/bootstrap'
          expand: true
        ,
          cwd: 'client/requires/font-awesome/'
          src: ['**/*-webfont.*']
          dest: 'public/fonts'
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
      js: 
        files: ['client/src/templates/**/*.eco', 'client/src/**/*.js', 'client/src/**/*.coffee']
        tasks: ['build:js', 'copy:js']
      css: 
        files: ['client/src/styles/**/*.scss']
        tasks: ['sass:build', 'copy:css']
      static:
        files: ['client/**/*.html','client/**/*.png','client/**/*.jpg','client/**/*.gif',]
        tasks: ['copy:static']
      
    # for changes to the code
    concurrent: 
      dev: 
        tasks: ['watch:js', 'watch:css', 'watch:static']
        options: 
          logConcurrentOutput: true

  
  grunt.registerTask('init:dev', ['clean', 'bower', 'build:vendor_js', 'build:js', 'build:css']);
  # build source
  grunt.registerTask('build:vendor_js', ['browserify:vendor']);
  grunt.registerTask('build:js', ['coffee:build', 'eco:build', 'browserify:app', 'concat:js']);
  grunt.registerTask('build:css', ['sass:build', 'sass:bootstrap', 'concat:vendor_css'])
  # copy to runtime destination
  grunt.registerTask('deploy:vendor', ['copy:vendor_js', 'copy:vendor_css', 'copy:vendor_static'])
  grunt.registerTask('deploy:dev', ['copy:js', 'copy:css', 'copy:static'])
  
  # wipe the slate clean and start coding
  grunt.registerTask('dev', ['init:dev', 'deploy:vendor', 'deploy:dev', 'concurrent:dev']);
  # wipe clean and deploy prod with minified resources
  grunt.registerTask('prod', ['init:dev', 'cssmin', 'uglify', 'deploy:vendor', 'deploy:dev']);


  