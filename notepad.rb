require_relative "post.rb"
require_relative "task.rb"
require_relative "memo.rb"
require_relative "link.rb"

puts "Выбор поста?"
choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t #{index + 1}. #{type}"
  end

  choice = (STDIN.gets.chomp.to_i) - 1
end

entry = Post.create(choice)
entry.read_from_console

entry.save

puts "Yes"
