class ParseMarkdownService
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def call
    [
      Parsers::LinkedImages,
      Parsers::Images,
      Parsers::Links,
      Parsers::Headers,
      Parsers::Bold,
      Parsers::Underscore,
      Parsers::Strike
    ].each do |parser|
      regex = parser.const_get(:REGEXP_TO_MATCH)

      while match = text.match(regex)
        text.gsub!(match[0], parser.html(match))
      end
    end

    text
  end
end
