module Stylus
  module Source
    def self.bundled_path
      File.expand_path("../../../vendor/lib/stylus.js", __FILE__)
    end
  end
end
