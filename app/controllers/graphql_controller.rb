class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    result = Graph::Schema.execute(params[:query], variables: variables, context: {})
    render json: result
  end

  private

  def ensure_hash(variables)
    if variables.blank?
      {}
    elsif variables.is_a?(String)
      JSON.parse(variables)
    else
      variables
    end
  end
end