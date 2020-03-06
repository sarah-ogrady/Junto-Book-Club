module ApplicationHelper
  def author_cleaning(author)
    author.gsub(/^\[\"+|\"\]+$/, '')
  end
end
