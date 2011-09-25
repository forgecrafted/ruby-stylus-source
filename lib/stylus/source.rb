module Stylus
  module Source
    def self.bundled_path
      File.expand_path("../stylus.js", __FILE__)
    end
  end
end
