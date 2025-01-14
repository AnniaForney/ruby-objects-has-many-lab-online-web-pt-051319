class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(author)
      post = Post.new(author)
      @posts << post
      post.author = self
  end

  def self.post_count
    Post.all.count 
  end

end
