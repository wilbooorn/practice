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

  def delete(word)
    return false unless search(word)
    node = @root
    word.each_char do |letter|
      if node.children.length == 1 && node.word
        node.children = Hash.new
        return true
      end
      node = node.children[letter]
    end
    node.word = false
    true
  end
end

# t = Trie.new
# t.insert("robin")
# t.insert("hello")
# puts t.search("robin")
# puts t.search("hello")
# t.delete("robin")
# puts t.search("robin")
# puts t.starts_with("rob")
