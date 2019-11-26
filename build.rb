require 'fileutils'



case ARGV.first
when "clean"
  puts "> cleaning..."
  FileUtils.rm_rf('assets/uswds')
when "uswds"
  puts "> building USWDS..."
  FileUtils.mkdir_p 'assets/uswds'
  FileUtils.cp_r "node_modules/uswds/dist/css",   "assets/uswds/"
  FileUtils.cp_r "node_modules/uswds/dist/img",   "assets/uswds/"
  FileUtils.cp_r "node_modules/uswds/dist/fonts", "assets/uswds/"
  FileUtils.cp_r "node_modules/uswds/dist/js",    "assets/uswds/"
else
  puts "> build.rb: Not an option"
end