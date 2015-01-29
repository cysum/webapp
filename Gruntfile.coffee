module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'

      my_target:
        files:
          'build/js/vendor.js': [
            'vendor/jquery/jquery.js'
          ]

    stylus:
      compile:
        files:
          'css/style.css': 'stylus/style.styl'

    watch:
      scripts:
        files: ['stylus/*.styl', 'coffee/*.coffee', 'templates/*.html']
        tasks: ['default']

    jst:
      compile:
        files:
          'js/templates/index.js': ['templates/*.html']
      options:
        processName: (filename) -> filename.replace(/templates\/|\.html/gi, '')

    connect:
      server:
        options:
          keepalive: true
          port: 8002

    browserify:
      main:
        options:
          browserifyOptions:
            extensions: '.coffee'
          transform: ['coffeeify']
        files:
          'js/main.js': 'coffee/main.coffee'

  require('load-grunt-tasks')(grunt)

  grunt.registerTask 'default', ['stylus', 'jst', 'browserify']
