require "albacore"
require "rake/clean"

version = (File.read "VERSION").chomp

CLOBBER.include "pkg"

task :default => [:build]

desc "compile all of the module output"
output :build do |out|
  out.from "."
  out.to "pkg"
  out.dir "lib", :as => "PowerTab"
end

desc "package the current module for release"
zip :package => [:clobber, :build] do |zip|
  zip.directories_to_zip = ["pkg/PowerTab"]
  zip.flatten_zip
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
