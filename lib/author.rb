class Author
  attr_accessor :name
  @@post_count = []
  def initialize(name)
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def posts
    @posts
  end

  def post_count
    @posts.uniq.count
  end
end
