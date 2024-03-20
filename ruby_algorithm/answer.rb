def algorithm_01(number)
  response = []
  1.upto(number) do |num|
    if num%3 === 0 && num%5 === 0
      response.push("らんてくん")
    elsif num%3 === 0
      response.push("らんて")
    elsif num%5 === 0
      response.push("くん")
    else
      response.push(num)
    end
  end
  return response
end

def algorithm_02(word)
  reverse_word = word.reverse
  return reverse_word
end

def algorithm_03(word)
  gusu = ""
  kisu = ""
  word.each_char.with_index{|c, index|
    if index % 2 == 0 || index == 0 
      kisu << c
    else
      gusu << c
    end
  }
  return kisu + gusu
end

def algorithm_04(text)
  text = text.delete(",.")
  mojisu = []
  tango = text.split(' ')
  tango.each do |moji|
    count = moji.length.to_i
    mojisu.push(count)
  end
  return mojisu.to_a
end
