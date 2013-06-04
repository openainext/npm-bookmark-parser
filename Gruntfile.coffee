"use strict"
module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    # Unit tests.
    nodeunit:
      tests: ["test/test.js"]

  
 
  # These plugins provide necessary tasks.
  grunt.loadNpmTasks "grunt-contrib-nodeunit"
  # Whenever the "test" task is run, run some basic tests.
  grunt.registerTask "test", ["nodeunit"]
  
  # By default, lint and run all tests.
  grunt.registerTask "default", ["nodeunit"]