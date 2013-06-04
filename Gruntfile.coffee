"use strict"
module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    # Unit tests.
    nodeunit:
      tests: ["test/test.js"]
    coffee:
      all:
        options:
          bare: true
        files:
          'index.js': 'index.coffee',
          'test/test.js': 'test/test.coffee'

  
 
  # These plugins provide necessary tasks.
  grunt.loadNpmTasks "grunt-contrib-nodeunit"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  # Whenever the "test" task is run, run some basic tests.
  grunt.registerTask "test", ["nodeunit"]
  grunt.registerTask "build", ["coffee"]
  # By default, lint and run all tests.
  grunt.registerTask "default", ["nodeunit"]