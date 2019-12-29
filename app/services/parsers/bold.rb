module Parsers
  module Bold
    REGEXP_TO_MATCH = /\*\*(?<text>.*)\*\*/.freeze

    def self.html(match)
      "<strong>#{match[:text]}</strong>"
    end
  end
end
