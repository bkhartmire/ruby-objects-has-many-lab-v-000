class Post
  attr_accessor :author, :title, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    self.artist.name
  end
end
