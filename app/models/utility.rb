class Utility

def self.strip_html(str)
  document = Nokogiri::HTML.parse(str)
  document.css("br").each { |node| node.replace("\n") }
  document.text
end

end