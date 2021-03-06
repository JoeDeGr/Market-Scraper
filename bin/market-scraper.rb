#!/usr/bin/env ruby
class MarketScraper
    def start
      puts "Hello World!"
      puts "-----------------"
      puts "How may we be of assistance today?"
      puts "Would you like to:
          1) Create a new portfolio.
          2) Review an existing Stock or Portfolio?
          3) Add a new stock or update a Portfolio?"
      input = gets.strip.to_i
      case input 
      when 1
          puts "What would you like the name of the new portfolio to be?"
          input = gets.chomp 
          Portfolio.new(input)
  
          puts "Would you like to add a stock to the new portfolio? Y/N"
          value = gets.chomp
          until value == "N"
              "What stock would you like to add to the new portfolio?"
              stock = gets.chomp
              if name.add_stock(stock)
  
          end
      end
  end
end

