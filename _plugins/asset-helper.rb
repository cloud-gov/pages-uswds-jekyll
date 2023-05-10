module AssetHelper
    def self.process(site, payload)
      return if @processed
      system "cp -r node_modules/uswds/dist/js/ assets/js/"
      system "cp -r node_modules/uswds/dist/img/ assets/uswds/img/" 
      system "cp -r node_modules/uswds/dist/fonts/ assets/uswds/fonts/"
      @processed = true
    end
  end
  
  Jekyll::Hooks.register :site, :post_write do |site, payload|
    AssetHelper.process(site, payload)
  end