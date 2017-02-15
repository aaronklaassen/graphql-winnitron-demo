module Graph
  module Types
    Game = GraphQL::ObjectType.define do
      name "Game"
      description "A sweet arcade game."

      interfaces [GraphQL::Relay::Node.interface]

      field :id, !types.ID
      field :title, types.String
      field :description, types.String
      field :minPlayers, types.Int, property: :min_players
      field :maxPlayers, types.Int, property: :max_players
      field :zip, Graph::Types::Zip, property: :current_zip
      connection :owners, Graph::Types::User.connection_type, property: :users
    end
  end
end