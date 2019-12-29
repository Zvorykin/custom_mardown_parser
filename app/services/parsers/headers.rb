module Parsers
  module Headers
    REGEXP_TO_MATCH = /(?<hashes>^#+) (?<text>.+)/

    def self.html(match)
      header_tag = "h#{match[:hashes].size}"

      "<#{header_tag}>#{match[:text]}</#{header_tag}>"
    end
  end
end
