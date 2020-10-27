# frozen_string_literal: true

# @api private
# @since 0.1.0
module MetaStruct::Graph::Invariants::Pre::HasOnlyOneRoot
  class << self
    # @param nodes [Array<MetaStruct::Graph::Node>]
    # @param edges [Array<MetaStruct::Graph::Edge>]
    # @return [void]
    #
    # @api private
    # @since 0.1.0
    def validate!(nodes, edges)
      root_nodes = MetaStruct::Graph::Algorithms::FindRootNodes.call(nodes, edges)

      case
      when root_nodes.size == 0
        raise(
          MetaStruct::Graph::RootNotFoundInvariantError,
          'Your graph has no root node.'
        )
      when root_nodes.size != 1
        raise(
          MetaStruct::Graph::MoreThanOneRootInvariantError,
          "Your graph has more than one root (you can have only one root in graph entity). " \
          "Root node UUIDs: #{root_nodes.map(&:uuid).join(', ')}."
        )
      end
    end
  end
end
