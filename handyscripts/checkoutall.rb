# See readme.txt for documentation
require "paths.rb"

$services.each { |file|   
   puts 'Updating ' + file
   Kernel.system('svn co ' + file)
}