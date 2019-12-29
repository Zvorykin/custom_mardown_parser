module Parsers
  module Underscore
    REGEXP_TO_MATCH = /__(?<text>.*)__/.freeze

    def self.html(match)
      "<p style=\"text-decoration: underline;\">#{match[:text]}</p>"
    end
  end
end
