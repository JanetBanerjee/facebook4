class Facebook
  class << self
    def fbgraph(token)
      Koala::Facebook::API.new(token)
    end

    def get_connection(token, id, connection_name, args = {}, options = {}, &block)
      fbgraph(token).get_object(id, connection_name, args, options, &block)
    end
  end
end