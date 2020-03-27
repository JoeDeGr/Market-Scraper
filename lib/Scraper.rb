class Scraper
    def initialize (symbol)
        @doc = Nokogiri::Html(open("https://finance.yahoo.com/quote/#{symbol)}"))
    end

# will take in a symbol provided by user and get the data

# will parse the info and call the Stock class
# Can be called to check the valye of the stock
end
