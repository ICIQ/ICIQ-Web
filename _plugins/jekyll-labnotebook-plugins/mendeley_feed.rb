require 'feedjira' # atom/rss API
require 'nokogiri'  # Parse HTML
require 'httparty' # To use feedjira v3.0


module Jekyll
  class MendeleyFeed < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      input = text.split(/, */ )
      @text = input[0]
      @count = input[1]
      if input[1] == nil
        @count = 3
      end
    end
    def render(context)
      puts "Mendeley feed by RSS with mendeley_feed.rb"
      xml = HTTParty.get("http://www.mendeley.com/groups/" + @text + "/feed/rss/").body # Updated for Feedjira 3.0
      feed = Feedjira.parse(xml)
      if defined?(feed.entries)
        out = "<ul>"
        # consider formatting properly
        for i in 0 ... @count.to_i
          doc = Nokogiri::HTML.parse(feed.entries[i].summary) # parse the content
          # Print title, content
          out = out + "<li>" +
            feed.entries[i].title + ": " +
            doc.xpath("//p[1]").text +
            doc.xpath("//p[2]").text +
  #          "<em>" + doc.css('blockquote').text + "</em>" +
            " <a href=\"" + feed.entries[i].url + "\">" +
            feed.entries[i].published.strftime("%I:%M %Y/%m/%d") + "</a>" +
            "</li>"
        end
        out + "</ul>"
      else
        " "
      end
    end
  end
end ## end module Jekyll

Liquid::Template.register_tag('mendeley_feed', Jekyll::MendeleyFeed)
