class Stock

    attr_acessor :name, :symbol, :value, :shares

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


    def total_value
        total = self.value * self.shares
        total
    end


#will send the created stock to the portfolio class

# will store the stock and relevant information

end