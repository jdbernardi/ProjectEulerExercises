class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def push(head, data)
  
end

def build_one_two_three
  
end


#describe "tests for inserting a node before another node." do
  push(nil, 1).data #, 1, "Should be able to create a new linked list with push().")
  push(nil, 1).next #, nil, "Should be able to create a new linked list with push().")
  push(Node.new(1), 2).data #, 2, "Should be able to prepend a node to an existing node.")
  push(Node.new(1), 2).next.data #, 1, "Should be able to prepend a node to an existing node.")
#end
#describe "tests for building a linked list." do
  build_one_two_three().data #, 1, "First node should should have 1 as data.")
  build_one_two_three().next.data #, 2, "Second node should should have 2 as data.")
  build_one_two_three().next.next.data #, 3, "Third node should should have 3 as data.")
  build_one_two_three().next.next.next #, nil, "End of the list should be nil")
#end