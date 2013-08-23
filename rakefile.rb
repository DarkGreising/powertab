require "albacore"
require "rake/clean"

version = (File.read "VERSION").chomp

CLOBBER.include "pkg"

task :default

directory "pkg"

desc "package the current module for release"
zip :package => [:clobber, "pkg"] do |zip|
  zip.directories_to_zip = ["lib"]
  zip.output_file = "PowerTab-#{version}.zip"
  zip.output_path = "pkg"
end

desc "test install the module into a separate session"
exec :install do |cmd|
  cmd.command = "powershell"
  cmd.parameters = [
    "-nologo",
    "-noprofile",
    "-executionpolicy Bypass",
    "-command Import-Module ./lib/PowerTab.psm1"
  ]
end
