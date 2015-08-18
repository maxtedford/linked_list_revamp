require 'rspec'
require_relative '../lib/linked_list'

describe 'the linked list' do
  let(:list) { LinkedList.new }
  
  before(:each) do
    list
  end
  
  it 'exists' do
    expect(list)
  end
  
  it 'has a head upon initialization' do
    expect(list.head.class).to eq(Node)
    expect(list.head.value).to eq("head")
    expect(list.count).to eq(1)
  end
  
  it 'has a tail upon initialization' do
    expect(list.tail.class).to eq(Node)
    expect(list.tail.value).to eq("head")
    expect(list.count).to eq(1)
  end
  
  it 'can append a new node to the list' do
    node = Node.new("this is the first node")
    list.append(node)
    
    expect(list.head.next).to eq(node)
    expect(list.count).to eq(2)
  end
  
  it 'can return the value of the node it points to' do
    node = Node.new("this is the first node")
    list.append(node)
    
    expect(list.head.next).to eq(node)
  end
end
