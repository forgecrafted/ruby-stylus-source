module Stylus
  module Source
    def self.bundled_path
      File.expand_path("../../../vendor/index.js", __FILE__)
    end
  end
end
