class Author
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post = Post.new
    post.author = self
    @posts << post
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
    @posts.uniq.length
  end
end
