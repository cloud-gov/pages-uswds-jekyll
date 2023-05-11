require 'fileutils'

module AssetHelper
    def self.process(site, payload)
        return if @processed
        FileUtils.cp_r('node_modules/uswds/dist/js/', 'assets/', verbose: true)
        FileUtils.cp_r('node_modules/uswds/dist/img/', 'assets/uswds/', verbose: true)
        FileUtils.cp_r('node_modules/uswds/dist/fonts/', 'assets/uswds/', verbose: true)
        @processed = true
    end
end
  
Jekyll::Hooks.register :site, :after_reset do |site, payload|
    AssetHelper.process(site, payload)
end
