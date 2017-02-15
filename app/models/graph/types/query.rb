module Graph
  module Types
    Query = GraphQL::ObjectType.define do
      name "Query"
      description "Query root"

      field :allGames, !types[Graph::Types::Game] do
        resolve ->(_, args, _) do
          ::Game.with_zip
        end
      end

      field :game, Graph::Types::Game do
        argument :id, !types.ID
        resolve ->(_, args, _) do
          ::Game.with_zip.find(args[:id])
        end
      end

      field :allWinnitrons, !types[Graph::Types::Winnitron] do
        resolve ->(_, args, _) do
          ::ArcadeMachine.all
        end
      end

      field :winnitron, Graph::Types::Winnitron do
        argument :id, !types.ID
        resolve ->(_, args, _) do
          ::ArcadeMachine.find(args[:id])
        end
      end


      # connection :owners, User.connection_type do
      #   resolve ->(_, _, _) do
      #     ::User.all
      #   end
      # end

    end
  end
end
