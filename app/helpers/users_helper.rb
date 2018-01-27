module UsersHelper
  def has_posts?(user)
    user.posts.count != 0 || user.comments.count != 0
  end

  def favorite_user(favorite)
    favorite.post.user
  end

  def favorite_post(favorite)
    favorite.post
  end
end
