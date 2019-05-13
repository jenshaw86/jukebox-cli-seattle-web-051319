songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  
  songs.each_with_index do |song, index|
    if song.include?(user_choice) || user_choice == index-1
      puts "Playing #{song}"
    end
  end
  puts "Invalid input, please try again"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"  
end

def run
  help
  user_command =""
  unless user_command == "exit"
    puts"Please enter a command:"
    user_command = gets.chomp
    if user_command == "list"
      list
    elsif user_command == "play"
      play
    elsif user_command == "help"
      help
    elsif user_command == "exit"
      exit_jukebox
    end
  
end


