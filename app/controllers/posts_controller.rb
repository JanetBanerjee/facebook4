class PostsController < ApplicationController
  before_action :fbgraph, only: [:index, :user_posts, :user_comments]
  require 'koala'
  require 'json'
  require 'devise'

  def home

  end

  def index
    @post = @graph.get_connection(14117761406, 'feed', {limit: 5, fields: ['message', 'updated_time', 'full_picture', 'from {name}', 'id', 'comments {message, from, id, created_time}']})
  end

  def user_posts

  end

  def user_comments

  end


  def facebook

  end

  def fbgraph(token)
    @graph = Koala::Facebook::API.new(token)
  end

end
