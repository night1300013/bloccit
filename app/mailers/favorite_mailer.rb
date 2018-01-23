class FavoriteMailer < ApplicationMailer
  default from: "night1300013@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@thawing-brushlands-95762.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@thawing-brushlands-95762.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@thawing-brushlands-95762.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
