module Parsers
  module Strike
    REGEXP_TO_MATCH = /~~(?<text>.*)~~/.freeze

    def self.html(match)
      "<p style=\"text-decoration: line-through;\">#{match[:text]}</p>"
    end
  end
end
