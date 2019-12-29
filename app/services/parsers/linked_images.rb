module Parsers
  module LinkedImages
    REGEXP_TO_MATCH = /\[!\[(?<alt>[\w ]*)\]\((?<src>[\w ]+)\)\]\((?<href>[\w ]+)\)/.freeze

    def self.html(match)
      "<a href=\"#{match[:href]}\">
        <img src=\"#{match[:src]}\" alt=\"#{match[:alt]}\"/>
      </a>"
    end
  end
end
