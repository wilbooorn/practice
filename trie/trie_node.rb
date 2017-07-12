class TrieNode
  attr_accessor :children, :word

  def initialize
    @children = Hash.new
    @word = false
  end

end
