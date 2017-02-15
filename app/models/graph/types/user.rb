module Graph
  module Types
    User = GraphQL::ObjectType.define do
      name "User"
      description "A person with good taste."

      interfaces [GraphQL::Relay::Node.interface]

      field :name, types.String
    end
  end
end