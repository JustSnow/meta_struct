# frozen_string_literal: true

module MetaStruct::Graph::Factory
  class << self
    # @option nodes [Array<MetaStruct::Graph::Node>]
    # @option edges [Array<MetaStruct::Graph::Edge>]
    # @return [MetaStruct::Graph]
    def create(nodes:, edges:)
      validate_attributes(nodes, edges)
      point_tree = build_point_tree(nodes, edges)
      create_graph(point_tree)
    end

    private

    # @param nodes [Array<MetaStruct::Graph::Node>]
    # @param edges [Array<MetaStruct::Graph::Edge>]
    # @return [void]
    def validate_attributes(nodes, edges)
    end

    # @param nodes [Array<MetaStruct::Graph::Node>]
    # @param edges [Array<MetaStruct::Graph::Edge>]
    # @return [MetaStruct::Graph::Point]
    def build_point_tree(nodes, edges)
    end

    # @param [MetaStruct::Graph::Point]
    # @return [MetaStruct::Graph]
    def create_graph(point_tree)
    end
  end
end
