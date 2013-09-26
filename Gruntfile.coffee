module.exports = (grunt) ->

  # Configuration
  grunt.initConfig

    # Parse the package.json file
    pkg: grunt.file.readJSON('package.json')

    # Watch
    watch:
      styles:
        files: ['<%= pkg.paths.styles %>/**/*.css'],
        tasks: ['exec:updateui', 'notify:styles'],
        options:
          interrupt: true

      scripts:
        files: ['<%= pkg.paths.scripts %>/**/*.js', '!<%= pkg.paths.scripts %>/test/**/*.js'],
        tasks: ['exec:updateui', 'notify:scripts'],
        options:
          interrupt: true

    # Shell commands
    exec:
      updateui:
        cmd: 'pushd <%= pkg.paths.cap %>; ant update-ui; popd'

    # Notify
    notify:
      styles:
        options:
          message: 'CAP styles updated'
      scripts:
        options:
          message: 'CAP scripts updated'

  # Load external tasks
  grunt.loadNpmTasks('grunt-exec')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-notify');

  # Register a default task
  grunt.registerTask('default', ['watch'])
