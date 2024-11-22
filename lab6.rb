require 'securerandom'

class User
  attr_accessor :username, :email
  
  @@users = {}

  def initialize(username, email)
    @id = SecureRandom.uuid
    @username = username
    @email = email
    @posts = []
    @registered_at = Time.now
    @@users[@id] = self
  end

  def create_post(content)
    post = Post.new(self, content)
    @posts << post
    post
  end

  def delete_post(post)
    @posts.delete(post)
  end

  def posts
    @posts.dup
  end

  def self.find_by_id(user_id)
    @@users[user_id]
  end
end

class Moderator < User
  attr_reader :moderation_level

  def initialize(username, email, moderation_level)
    super(username, email)
    @moderation_level = moderation_level
  end

  def delete_post(post)
    super(post)
    puts "Post deleted by moderator #{username}"
  end

  def block_user(user)
    puts "User #{user.username} blocked by moderator #{username}"
  end
end

class Administrator < Moderator
  def initialize(username, email)
    super(username, email, "full")
  end

  def create_moderator(username, email, moderation_level)
    Moderator.new(username, email, moderation_level)
  end

  def system_maintenance
    puts "Performing system administration"
  end
end

class Post
  attr_accessor :content
  attr_reader :author, :created_at

  def initialize(author, content)
    @id = SecureRandom.uuid
    @author = author
    @content = content
    @created_at = Time.now
  end

  def to_s
    "Post by #{@author.username}: #{@content}"
  end
end

# Demonstration
def main
  admin = Administrator.new("admin_user", "admin@example.com")
  moderator = admin.create_moderator("moderator_user", "moderator@example.com", "medium")
  regular_user = User.new("regular_user", "user@example.com")

  post1 = regular_user.create_post("My first post!")
  post2 = regular_user.create_post("Another post")

  puts post1
  puts post2

  moderator.delete_post(post1)
  moderator.block_user(regular_user)

  admin.system_maintenance
end

main