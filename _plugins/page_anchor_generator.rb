module Jekyll
  
  class PageAnchorGenerator < Generator
     safe true
     priority :highest

     def generate(site)
       site.pages.find_all{|item| item.data['categories'] == 'documentation' }.each do |page|

        anchors = Array.new
        page.content.scan(/\n### ([^\n]+)/m) do |match|
          anchor = Hash.new
          anchor['title'] = match[0]
          anchor['name'] = match[0].downcase.gsub(/[^a-z\s]/, '').gsub(/\W+/, "-")
          anchors << anchor
        end

        page.content.gsub!(/(#)(\w|\[|\=|\+|\-|\*|\/)/) { |match| match[1] }
        #page.content.gsub!(/(::)(\w|\[|\=|\+|\-|\*|\/)/) { |match| match[2] }

        page.data['anchors'] = anchors
       end
     end
   end

end