module Graph
  module Types
    Zip = GraphQL::ObjectType.define do
      name "Zip"
      description "An uploaded zip file."

      # interfaces [GraphQL::Relay::Node.interface]

      #field :game, types[Graph::Types::Game]
      field :executable, types.String
    end
  end
end