require pry

class Portfolio
    extend MarketScraper
    attr accessor :name, :value
    attr_reader :stocks

    @@all = []

    def initialize(name)
        binding.pry
        @name = name
        @stocks =[]
        save
    end

    def save 
        @@all << self
    end

    def self.clear_all 
        @@all.clear 
    end

    def add_stock(stock)
        if !stock.is_a(Stock)
            raise InvalidType, "Invalid stock type, stock must be a Stock!" 
        else
            @stocks << stock
            @value += stock.total_value
        end
    end

    def stock
        @stock.dup.freeze
    end

    def value
        total = []
        self.stocks.each do |stock|
            total += stock.total_value
        end
        total
    end


    
    #stores an array of included stocks in a given portfolio
    #aggregates the value of the portfolio based on the number of each stock and their values.

end