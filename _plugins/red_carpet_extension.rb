require 'redcarpet'

class Redcarpet::Render::HTML

  def header(text, level)
    anchor_name = text.downcase.gsub(/[^a-z\s]/, '').gsub(/\bamp\b/, '').gsub(/\W+/, "-")
    "<h#{level} id=#{anchor_name}>#{text}</h#{level}>"
  end

  def preprocess(document)
   document.gsub!(/\[tip (?<tip>.+)\]/) { process_tip($~[:tip]) }
   document.gsub!(/\[note (?<note>.+)\]/) { process_note($~[:note]) }
   document.gsub!(/\[warning (?<warning>.+)\]/) { process_warning($~[:warning]) }
   document.gsub!(/\[more-information\]/) { process_more_information }
   document
  end

  def process_tip(tip)
    "<div class='flag'><h5>Level Up!</h5><br/><p>#{tip}</p></div>"
  end

  def process_note(note)
    "<div class='flag info'><h5>More intel!</h5><br/><p>#{note}</p></div>"
  end

  def process_warning(warning)
    "<div class='flag warning'><h5>Watch out!</h5><br/><p>#{warning}</p></div>"
  end

  def process_more_information
    "<img class='more-info' src='/images/moreinfo.png' />"
  end

end