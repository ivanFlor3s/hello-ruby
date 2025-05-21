require 'telegram/bot'
require 'sequel'


TOKEN = '7582061275:AAEdFvWar_wgKxYcciCAyv50d_o7-CoJYws'

# Telegram::Bot::Client.run(TOKEN) do |bot|
#   bot.listen do |message|
#     case message.text
#     when '/start'
#       bot.api.send_message(chat_id: message.chat.id, text: "Hola, #{message.from.first_name}!")
#     when '/help'
#       bot.api.send_message(chat_id: message.chat.id, text: "Comandos disponibles:\n/start\n/help")
#     when '/gif'
#       gif_url = 'https://imgur.com/Ji1posn'
#       bot.api.send_photo(chat_id: message.chat.id, photo: gif_url)
#     else
#       bot.api.send_message(chat_id: message.chat.id, text: "No entendí eso. Escribe /help.")
#     end
#   end
# end


# reader = TextReader.new('resources/deus.txt')
# byebug
# reader.read_text

url = ENV['DATABASE_STRING_CONNECTION'] || 'None'
puts "Connecting to: #{url.inspect}"
DB = Sequel.connect(url)
puts "Database connected successfully"
