module Graph
  module Types
    Zip = GraphQL::ObjectType.define do
      name "Zip"
      description "An uploaded zip file."

      field :executable, types.String
      field :last_modified, types.String, property: :updated_at
    end
  end
end