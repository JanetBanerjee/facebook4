class PostsController < ApplicationController
  before_action :facebook, only: [:index, :user_posts, :user_comments]
  require 'koala'
  require 'json'
  require 'devise'

  def home

  end

  def index

  end

  def user_posts

  end

  def user_comments

  end


  def facebook
    @post = Facebook.get_connection(current_user.token, 14117761406, 'feed', {limit: 5, fields: ['message', 'updated_time', 'full_picture', 'from {name}', 'id', 'comments {message, from, id, created_time}']})
  end

end
