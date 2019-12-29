module Parsers
  module Links
    REGEXP_TO_MATCH = /\[(?<text>.+)\]\((?<href>[\w ]+)\)/.freeze

    def self.html(match)
      "<a href=\"#{match[:href]}\">#{match[:text]}</a>"
    end
  end
end
