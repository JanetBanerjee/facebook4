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
    @graph = Koala::Facebook::API.new('EAAEsRUgaygUBAJx4KBqrZACQZB3wKIncfQJpINuJDe2h9MRhf3nLD6Rp9b5zUgHxL06DdrmFKRyso2B6YE9e3sVi2Wt6gmpX4fepeIX3ZCK4add4NqpaadxQRZAlwLHs0QpGCAxucYPfo6NztxioOxA1Ylw2ZBr6sxJs64Lqfy7FCYZCM1YrG5jdiB5RT3LlEZD')

    @post = @graph.get_connection(14117761406, 'feed', {limit: 5, fields: ['message', 'updated_time', 'full_picture', 'from {name}', 'id', 'comments {message, from, id, created_time}']})
  end

end
