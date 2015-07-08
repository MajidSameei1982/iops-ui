module.exports = (grunt)->

  require('time-grunt')(grunt);
  require('load-grunt-tasks')(grunt);

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    bower:
      install:
        options:
          targetDir: 'client/requires'
          layout: 'byComponent'
          cleanTargetDir: true
          verbose: true
      
    clean: 
      build: ['build']
      dev: 
        src: ['build/app.js', 'build/<%= pkg.name %>.css', 'build/<%= pkg.name %>.js']
      prod: ['dist']

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
        
    eco:
      build:
        options:
          basePath: 'client/templates/'
        files:
          'build/templates.js': ['client/templates/**/*.eco']
    sass:
      dist:
        files:
          'build/<%= pkg.name %>.css' : 'client/styles/app.scss'

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
      app:
        src: ['build/templates.js', 'build/<%= pkg.name %>.js']
        dest: 'build/<%= pkg.name %>.js'
      compact:
        src: ['build/vendor.js', 'build/<%= pkg.name %>.js']
        dest: 'build/<%= pkg.name %>.js'

    copy: 
      dev: 
        files: [
          src: 'build/<%= pkg.name %>.js',
          dest: 'public/js/<%= pkg.name %>.js'
        , 
          src: 'build/vendor.js',
          dest: 'public/js/vendor.js'
        , 
          src: 'build/<%= pkg.name %>.css',
          dest: 'public/css/<%= pkg.name %>.css'
        , 
          src: 'client/img/*',
          dest: 'public/img/'
        ]
      prod: 
        files: [
          src: ['client/img/*'], dest: 'dist/img/'
        ]

    # CSS minification.
    cssmin: 
      minify: 
        src: ['build/<%= pkg.name %>.css']
        dest: 'dist/css/<%= pkg.name %>.css'

    # Javascript minification.
    uglify:
      compile: 
        options: 
          compress: true
          verbose: true
        files: [
          src: 'build/<%= pkg.name %>.js'
          dest: 'dist/js/<%= pkg.name %>.js'
        ]
      
    
    # for changes to the front-end code
    watch: 
      scripts: 
        files: ['client/templates/*.eco', 'client/src/**/*.js']
        tasks: ['clean:dev', 'browserify:app', 'concat:app', 'copy:dev']
      less: 
        files: ['client/styles/**/*.less']
        tasks: ['less:transpile', 'copy:dev']
      
    # for changes to the node code
    concurrent: 
      dev: 
        tasks: ['watch:scripts', 'watch:less']
        options: 
          logConcurrentOutput: true

    # js linter
    jshint: 
      all: ['Gruntfile.js', 'client/src/**/*.js']
      dev: ['client/src/**/*.js']

  grunt.registerTask('init:dev', ['clean', 'bower', 'browserify:vendor']);

  #grunt.registerTask('build:dev', ['clean:dev', 'browserify:app', 'jshint:dev', 'less:transpile', 'concat', 'copy:dev']);
  #grunt.registerTask('build:dev', ['clean:build', 'coffee:build', 'browserify:app', 'jshint:dev', 'sass', 'concat', 'copy:dev']);
  grunt.registerTask('build:dev', ['clean:build', 'coffee:build', 'eco:build', 'browserify:vendor', 'browserify:app', 'sass', 'concat:app', 'copy:dev']);
  #grunt.registerTask('build:prod', ['clean:prod', 'browserify:vendor', 'browserify:app', 'jshint:all', 'less:transpile', 'concat', 'cssmin', 'uglify', 'copy:prod']);

  grunt.registerTask('server', ['build:dev', 'concurrent:dev']);
  
  