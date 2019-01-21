require "pry"

class User						#on crée la classe User --> ici on écrit donc class et pas def

	attr_accessor :email

	attr_accessor :name

	@@user_array = []



	def initialize(email_to_save)

		@email = email_to_save
		@@user_array << email_to_save

	end



	def self.all

		return @@user_array

	end



end 


binding.pry

