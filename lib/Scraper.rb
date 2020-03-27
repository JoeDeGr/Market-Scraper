class Scraper
    def initialize (symbol)
        @doc = Nokogiri::Html(open("https://finance.yahoo.com/quote/#{symbol)}"))
        stock.price = doc.search(#quote-header-info > div.My\(6px\).Pos\(r\).smartphone_Mt\(6px\) > div.D\(ib\).Va\(m\).W\(65\%\).W\(60\%\)--tab768.Ov\(h\) > div > span.Trsdu\(0\.3s\).Fw\(b\).Fz\(36px\).Mb\(-4px\).D\(ib\))
        Stock.new(name)
    end


# will take in a symbol provided by user and get the data

# will parse the info and call the Stock class
# Can be called to check the valye of the stock
end
