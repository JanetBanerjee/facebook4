class PostsController < ApplicationController
  require 'koala'

  def home

  end

  def index
    @graph = Koala::Facebook::API.new('EAAEsRUgaygUBAONIjjpXAR73KoRAzTDEBeZAxZAa0bzD4OaC6sct4X2AoEtRhe8UvbaBqUpDNl84M7Ofi9iJhYKAOrwNbRp1slyeF74R7gG2P1m9YprQDRBkdLSeebQu3OSWFMyCUtNrv0kENSraX10tHZAj59U7BqCo9vJGZA30tKgbNZAi4S3n5S0cttYIZD')

    @user = @graph.get_connection('me', 'posts', {
        limit: 5,
        fields: ['message', 'id']})

    @group = @graph.get_object('14117761406?fields=feed.limit(10)')
    json = @group.to_json
    @object = JSON.parse(json, object_class: OpenStruct)["story"]

  end

end
