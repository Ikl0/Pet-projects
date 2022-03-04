=begin numbers = [5, 3, 2, 1
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  sum = numbers[0]+numbers[1]
end
p sum_two_smallest_numbers(numbers)


friends = ["Ryan", "Kieran", "Jason", "Yous"]
def friend(friends)
  friends.select{|el| el.length==4}
end

def nb_year(p0, percent, aug, p)
  times = 0
  while (p0 < p)
    times += 1
    p0 = (p0 + (p0 * (percent.to_f / 100)) + aug).to_i
  end
  times
end

p nb_year(1500000, 0.25, 1000, 2000000)


def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/,"")
end

p disemvowel("This website is for losers LOL!")


def filter_list(l)
    l.reject { |x| x.is_a? String }
end

p filter_list([1,2,'a','b'])


def century(year)
    cent = 0
    while year > 0
      year -= 100
      cent += 1
    end
    cent
end
p century(2000)


def find_it(seq)
  seq.each do |i|
    count = 0
    0.upto(seq.length - 1) do |z|
      if seq[z] == i
        count += 1
      end
    end
    if !count.even?
      return i
      break
     end
  end
end

p find_it([1,2,2,3,3,3,4,3,3,3,2,2,1])

def unique_in_order(iterable)
  iterable.squeeze.chars
end

p unique_in_order('AAAABBBCCDAABBB')


def accum(s)
  s.chars
  str = ''
  str += s[0].to_s.capitalize
  1.upto(s.length-1) do |i|
    str += '-' + s[i].capitalize + s[i].to_s.downcase*(i)
  end
  str
end

p accum ('ZpglnRxqenU')


def likes(names)
  if names.empty?
    return "no one like this"
   else
     if names.length == 1
       return names[0] + " like this"
     end
     if names.length == 2
           return names[0] +" and " + names[1] + " like this"
     end
     if names.length == 3
       return names[0] + ", " + names[1] + " and " + names[2] + " like this"
     end
     if names.length > 3
       return   names[0] + ", " + names[1] + " and " "#{names.length-2}" + " others like this"
     end
     end
end

p likes(['Alex', 'Jacob', 'Mark', 'Max'])


def high_and_low(numbers)
  numbers = numbers.split.map {|element| element.to_i}
  numbers = numbers.sort
  numbers[numbers.size-1].to_s + " " +numbers[0].to_s
end

p high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")


def get_count(input_str)
  input_str.count('aeiou')
end
p get_count("abracadabra")


def find_short(s)
  s = s.split(" ")
  s = s.sort_by { |word|word.length  }
  return s[0].size
end

p find_short("bitcoin take over the world maybe who knows perhaps")


def solution(str, ending)
  p str[str.size - ending.size, ending.size] == ending[0,ending.size]

end

 solution('abc', 'bc')

def array_diff(a, b)
  a-b
end

p array_diff([1,2],[1])


def descending_order(n)
  n.to_s.chars.map.map(&:to_i).sort{|a,b| b<=>a}.join.to_i
end

p descending_order(42145)



def pangram?(string)
  string.downcase.chars.uniq.sort.join.end_with?('abcdefghijklmnopqrstuvwxyz')
end

p pangram?('The quick brown fox jumps over the lazy dog.')

def square_digits num
  num.to_s.chars.map(&:to_i).map!{|num| num**2}.map(&:to_s).join.to_i
end

p square_digits(9119)


def rot13(string)
  0.upto(string.size-1) do |el|
    check = string[el].ord
    # binding.irb
    if check >= 97 && check <=122
    position = string[el].ord + 13
      if position > 122
      position = 96 + (position-122)
      string[el] = position.chr
        else
      string[el] = position.chr
      end
    else if check >= 65 && check <= 90
      position = string[el].ord + 13
      if position > 90
        position = 64 + (position-90)
        string[el] = position.chr
      else
        string[el] = position.chr
      end
    end
    end
    end
  string
  end

p rot13("Abc")
=end

def alphabet_position(text)
  arr = []
  text = text.downcase.chars
  for el in text
    if el.ord >= 97 && el.ord <= 122
      arr.push (el.ord - 96)
  end
  end
  arr.join(" ")
end
p alphabet_position("The sunset sets at twelve o' clock.")

