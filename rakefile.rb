require 'albacore'

version = File.read "VERSION"

task :default

directory "pkg"

zip :package => "pkg" do |zip|
  zip.directories_to_zip = ["lib"]
  zip.output_file = "PowerTab-#{version}.zip"
  zip.output_path = "pkg"
end

exec :install do |cmd|
  cmd.command = "powershell"
  cmd.parameters = [
    "-nologo",
    "-noprofile",
    "-executionpolicy Bypass",
    "-command Import-Module ./lib/PowerTab.psm1"
  ]
end
