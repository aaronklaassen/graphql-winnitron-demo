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
    end
  end
end