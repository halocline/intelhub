class TotalCustomerValue
	def initialize
	end

	# get the customers we are interested in
	def getCustomerList (uri = "/Users/mdglissmann/Dropbox/intelhub/sample data/Fake Name Generator/FakeNameGenerator.com_10d88809.zip")
		# which customer list are we interested in?
		# does customer list exist?
		if @customers.nil?
			puts "No customers specified..."
			puts "Reading customer file..."
			file = unzip(uri)
		else
			puts @customers
		end

		file
	end

	def unzip(uri)
		require 'zip'

		Zip::File.open(uri) do |file|
			file.each do |e|
				puts "Extracting #{e.name}"
				e
			end
		end
	end

	# get the transactions associated with our customers
	def getTransactions
		
	end

	# get the advocacy events (referrals, ratings, mentions, etc.) associated with
	# the customers
	def getAdvocacy
		
	end

	# get the knowledge events associated with the customers
	def getKnowledge
		
	end

	# create a single data set with the total transactions, advocacy, and knowledge
	# for each customer
	def createTotalCustomerValueDataSet
		
	end

	# takes a data set containing customers and their related transactions,
	# advocacy, and knowledge, and then calculates the total customer value for
	# each customer
	def calcTotalCustomerValue
		
	end

end