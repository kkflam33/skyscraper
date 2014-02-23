class Scraper

	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/t/taylor_swift.html')

		doc = Nokogiri::HTML(response.body)

		quotes = []

		doc.css('.bqQuoteLink a').each do |data|
  			quotes << data.content
		end
		
		size = quotes.count
		index = rand(size)
		quotes[index]


	end

end
