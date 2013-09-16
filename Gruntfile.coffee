module.exports = (grunt) ->

  # Configuration
  grunt.initConfig

    # Parse the package.json file
    pkg: grunt.file.readJSON('package.json')

    # Watch
    watch:
      styles:
        files: ['<%= pkg.paths.styles %>/**/*.css'],
        tasks: ['exec:updateui'],
        options:
          interrupt: true

      scripts:
        files: ['<%= pkg.paths.scripts %>/**/*.js', '!<%= pkg.paths.scripts %>/test/**/*.js'],
        tasks: ['exec:updateui'],
        options:
          interrupt: true

    # Shell commands
    exec:
      updateui:
        cmd: 'pushd <%= pkg.paths.cap %>; ant update-ui; popd'

  # Load external tasks
  grunt.loadNpmTasks('grunt-exec')
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Register a default task
  grunt.registerTask('default', ['watch'])
