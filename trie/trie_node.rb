class TrieNode
  attr_accessor :store

  def initialize(value = nil)
    @store = [value]
    @next = nil
  end

  def include?(letter)
    @store.include?(letter)
  end

  def push(letter)
    @store.push(letter)
  end

end
