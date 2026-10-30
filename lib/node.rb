class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    self.value = value
    self.next_node = next_node
  end

  def to_s
    return "( #{value} ) -> nil" if next_node.nil?

    "( #{value} ) -> #{next_node}"
  end
end
