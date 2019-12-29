module Parsers
  module Images
    REGEXP_TO_MATCH = /!\[(?<alt>.+)\]\((?<url>[\w ]+)\)/.freeze

    def self.html(match)
      "<img src=\"#{match[:url]}\" alt=\"#{match[:alt]}\"/>"
    end
  end
end
