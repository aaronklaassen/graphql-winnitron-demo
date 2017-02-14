module Graph
  module Types
    Query = GraphQL::ObjectType.define do
      name "Query"
      description "Query root"

      field :games, !types.String do
        argument :first, types.Int, default_value: 50
        resolve ->(_, args, _) do
          {}
        end
      end
    end
  end
end
