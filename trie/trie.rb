require_relative 'trie_node'

class Trie
  def initialize
    @root = TrieNode.new
  end

  def insert(word)
    node = @root
    word.each_char do |letter|
      if !node.children.keys.include?(letter)
        node.children[letter] = TrieNode.new
      end
      node = node.children[letter]
    end
    node.word = true
  end

  def search(word)
    node = @root
    word.each_char do |letter|
      if !node.children.keys.include?(letter)
        return false
      end
      node = node.children[letter]
    end
    node.word
  end


  def starts_with(prefix)
    node = @root
    prefix.each_char do |letter|
      if !node.children.include?(letter)
        return false
      end
      node = node.children[letter]
    end
    true
  end
end

t = Trie.new
puts t.search("hello")
t.insert("robin")
t.insert("rob")
t.insert("hello")
t.insert("world")
puts t.search("robin")
puts t.search("robi")
puts t.starts_with("robins")
puts t.starts_with("robi")
