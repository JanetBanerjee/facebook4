class PostsController < ApplicationController
  before_action :facebook, only: [:index, :user_posts]
  require 'koala'
  require 'json'
  require 'date'

  def home

  end

  def index

  end

  def user_posts

  end


  def facebook
    @graph = Koala::Facebook::API.new('EAAEsRUgaygUBAOk05gzTKzjwmIWZAWh6nkZAi661cwKYM7QCZCANLJq2KVQ12tjVVRvrvZBsvGA4iTZBjZCIshcGA9ZCRMy83EClkrWRSm9NxSVEv3Riucld134WQbKZCZChFtiKgHNtlo58PuonUGXaPJIRIGINYxQvgyrzQ81q9psVUBBdTvVVkXyVAm4aSZB38ZD')

    @post = @graph.get_connection(14117761406, 'feed', {limit: 5, fields: ['message', 'updated_time', 'full_picture', 'from {name}', 'id', 'comments {message, from, id}']})
  end


end
