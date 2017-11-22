class Post
  attr_accessor :author, :title, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    @author = author
    @author_name = author.name
    @author_name
  end
end
