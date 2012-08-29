program = require 'commander'
{version} = require '../package.json'
{exec} = require 'child_process'

program.version(version)

program.command('init [dest]')
  .action (dest = './', options)->
    console.log "copying template files to #{dest}"
    exec "cp -r #{__dirname}/../app/* #{dest}"

program.parse(process.argv)
