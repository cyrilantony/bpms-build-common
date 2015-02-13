# Keep this structure to allow the build system to update version numbers.
VERSION_NUMBER = "7.5.1-SNAPSHOT"

require "repositories.rb"

desc "Common Dependency Build file"
define "dependencies" do

define "openrepo" do 
  puts "Packaging openrepo" 
  file = ("opensource-repo.rb")
  openrepo = artifact('org.intalio.common.dependencies:openrepo:rb:'+VERSION_NUMBER).from(file)
  puts "Installing openrepo" 
  install openrepo
  upload openrepo
end

define "intaliorepo" do 
  puts "Packaging intaliorepo" 
  file = ("intalio-repo.rb")
  intaliorepo = artifact('org.intalio.common.dependencies:intaliorepo:rb:'+VERSION_NUMBER).from(file)
  puts "Installing intaliorepo" 
  install intaliorepo
  upload intaliorepo
end

define "version" do 
  puts "Packaging version" 
  file = ("version.rb")
  versions = artifact('org.intalio.common.dependencies:version:rb:'+VERSION_NUMBER).from(file)
  puts "Installing version"
  install versions    
  upload versions
end

define "common" do 
  puts "Packaging common" 
  file = ("common.rb")
  commmon = artifact('org.intalio.common.dependencies:common:rb:'+VERSION_NUMBER).from(file)
  puts "Installing common" 
  install commmon   
  upload commmon
end

define "intalio" do  
  puts "Packaging intalio.rb" 
  file = ("intalio.rb")
  dependencies = artifact('org.intalio.common.dependencies:intalio:rb:'+VERSION_NUMBER).from(file)
  install dependencies
   puts "Installing intalio.rb" 
  upload dependencies 
end

define "intaliorelease" do  
  puts "Packaging intaliorelease" 
  file = ("intalio-release.rb")
  release = artifact('org.intalio.common.dependencies:intaliorelease:rb:'+VERSION_NUMBER).from(file)
   puts "Installing intaliorelease" 
  install release  
  upload release 
end

define "openrelease" do  
  puts "Packaging openrelease" 
  file = ("open-release.rb")
  openrelease = artifact('org.intalio.common.dependencies:openrelease:rb:'+VERSION_NUMBER).from(file)
   puts "Installing openrelease" 
  install openrelease
  upload openrelease 
end

define "intaliocommonfunction" do
  puts "Packaging intaliocommonfunction"
  file = ("intalio-common-function.rb")
  intaliocommonfunction = artifact('org.intalio.common.dependencies:intaliocommonfunction:rb:'+VERSION_NUMBER).from(file)
  puts "Installing intaliocommonfunction"
  install intaliocommonfunction
  upload intaliocommonfunction
end

end
