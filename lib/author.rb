class Author
  attr_accessor :name
  @@post_count = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@post_count << post
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@post_count << post
    @posts << post
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count.count
  end
end
