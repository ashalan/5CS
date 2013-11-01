require 'rscribd'

class ScribdController < ApplicationController

	def index

	end

	def find

		limit=10;
		page= params[:page].to_i || 1
		offset=(page-1)*limit

		Scribd::API.instance.key = '1p55b476noe4mvkvxo9pw'
		Scribd::API.instance.secret = 'sec-5n68cbldezyftcv1w59oz58p9a'

		user = Scribd::API.instance.user = signed_in_user
		puts user.inspect	


		results = Scribd::Document.find(:query => params[:title] , :limit => limit, :offset => offset)
  		puts "Search through docs turned up #{results.size} results:"
  		for doc in results
    		puts "#{doc.title}"
  	    end
  		render json: {success: true, documents: results, page: page}
  	end

  	def view

  	end

end
