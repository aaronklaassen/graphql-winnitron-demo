module Graph
  module Types
    Winnitron = GraphQL::ObjectType.define do
      name "Winnitron"
      description "The best arcade machine in the business."

      interfaces [GraphQL::Relay::Node.interface]

      field :id, !types.ID
      field :title, types.String
      field :description, types.String
      field :location, types.String
      connection :games, Graph::Types::Game.connection_type, property: :games
      connection :owners, Graph::Types::User.connection_type, property: :users
    end
  end
end