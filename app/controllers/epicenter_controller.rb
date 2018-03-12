class EpicenterController < ApplicationController
  def feed

    @following_tweets = []

    Tweet.all.each do |tweet|
      if current_user.following.include?(tweet.user_id) || current_user.id == tweet.user_id
        @following_tweets.push(tweet)
      end
    end

    # Personal better equivalent of above
    # array_of_users = current_user.following
    # array_of_users << current_user.id
    # @following_tweets = Tweet.where(user_id: array_of_users)

  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
  end

  def unfollow
    @name = params[:name]
  end

  def tag_tweets
    @tag = Tag.find(params[:id])
  end

end
