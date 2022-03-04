@actions = [:Rock, :Scissors, :Paper]

def comp_motion
  a = rand(0..2)
  @actions[a]
end

def get_winner(name_action)

  co_motion = comp_motion

  if co_motion == :Rock && name_action == :Scissors
    puts "You lose! Comp has a Rock."
  elsif co_motion == :Rock && name_action == :Paper
    puts "You win! Comp has a Rock."
  elsif co_motion == :Rock && name_action == :Rock
    puts "Draw! Both of you have the same motions."
  elsif co_motion == :Scissors && name_action == :Scissors
    puts "Draw! Both of you have the same motions."
  elsif co_motion == :Scissors && name_action == :Paper
    puts "You lose! Comp has a Scissors."
  elsif co_motion == :Scissors && name_action == :Rock
    puts "You win! Comp has a Scissors."
  elsif co_motion == :Paper && name_action == :Scissors
    puts 'You win! Comp has a paper.'
  elsif co_motion == :Paper && name_action == :Paper
    puts "Draw! Both of you have the same motions."
  elsif co_motion == :Paper && name_action == :Rock
    puts "You lose! Comp has a paper."
  else
    puts "Mistake! comp has #{co_motion} "
  end
  puts "I'm loh"
  puts "Motion: #{co_motion}"
end

loop do

  print 'Write your motion: '
  name_action = gets.chomp
  if name_action == ''
    break
  else
    name_action = name_action.strip.capitalize.to_sym
    get_winner (name_action)
  end
end




