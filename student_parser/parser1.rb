directory = File.dirname(__FILE__)
path = File.join(directory, 'tweets.txt')


def parse_info_line(line)
  line.strip
end

def format_data(parsed_data)
  parsed_data.map{|string| string strip}
end

#File.open(path).each {|line| puts line}


File.readlines('tweets.txt').each do |info_line|
  coord, date, tweet = format_data(parse_info_line(info_line))
  data = {coord: coord, date: date, tweet: tweet}
  p data
  end

