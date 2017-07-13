class QItem
  attr_accessor :word, :len
  def initialize(word, len)
    @word = word
    @len = len
  end
end


def isadjacent(a, b)
  count = 0
  n = a.length
  (0...n).each do |i|
    if a[i] != b[i]
      count += 1
    end
    break if count > 1
  end
  count == 1
end


def shortest_chain(start, target, dict)
  item = QItem.new(start, 1)
  queue = [item]
  while !queue.empty?
    current = queue.pop
    dict.each do |word|
      temp = word
      if isadjacent(current.word, temp)
        item.word = temp
        item.len  = current.len + 1
        queue.push(item)
        dict.delete(temp)
        return item.len - 1 if temp == target
      end
    end
  end
  false
end

d = []
d.push("poon")
d.push("plee")
d.push("same")
d.push("poie")
d.push("plie")
d.push("poin")
d.push("plea")
d.push("flea")
d.push("flee")
d.push("free")
start = "toon"
target = "free"

p shortest_chain(start, target, d)
