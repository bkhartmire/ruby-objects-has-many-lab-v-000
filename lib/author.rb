class Author
  attr_accessor :name
  @@post_count = []
  def initialize(name)
    @name = name
    posts = []
  end

  def add_post(post)
    @@post_count << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@post_count << post
  end

  def posts
    @@post_count
  end

  def post_count
    @@post_count.uniq.count
  end
end
