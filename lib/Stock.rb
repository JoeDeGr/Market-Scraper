class Stock

    attr_acessor :name, :symbol, :value, :shares, :portfolio

    @@all =[]

# will instantiate the stock

    def initialize (symbol, shares = 1)
        @name = name
        @symbol = symbol
        @value = value
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def get_info
        Scraper.new(symbol)
    end


#will send the created stock to the portfolio class

    def add_to_portfolio(portfolio_name)
        portfolio_name.add_stock(self)
    end

    def self.clear_all
        @@all.clear 
    end

    def total_value 
        total = self.value * self.shares 
    end



# will store the stock and relevant information

end