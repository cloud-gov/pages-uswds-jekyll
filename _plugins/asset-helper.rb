require 'fileutils'

module AssetHelper
    def self.process(site, payload)
        return if @processed
        FileUtils.copy_entry('node_modules/uswds/dist/js/', 'assets/js/')
        FileUtils.copy_entry('node_modules/uswds/dist/img/', 'assets/uswds/img/')
        FileUtils.copy_entry('node_modules/uswds/dist/fonts/', 'assets/uswds/fonts/')
        @processed = true
    end
end
  
Jekyll::Hooks.register :site, :post_write do |site, payload|
    AssetHelper.process(site, payload)
end