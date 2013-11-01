require 'slideshare/configuration'
require 'slideshare/request'
require 'digest/sha1'

class SlideshareController < ApplicationController

	def index

	end

	def find

		Scribd::API.instance.key = '1p55b476noe4mvkvxo9pw'
		Scribd::API.instance.secret = 'sec-5n68cbldezyftcv1w59oz58p9a'

		user = Scribd::API.instance.user = signed_in_user
		puts user.inspect	


		results = Scribd::Document.find(:query => params[:title], :limit => 10)
  		puts "Search through docs turned up #{results.size} results:"
  		for doc in results
    		puts "#{doc.title}"
  	    end
  		render json: {success: true, documents: results}
  	end

  	def view
  		
  	end

end
