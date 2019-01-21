require 'pry'
require 'time'
require 'date'

class EventCreator

	attr_accessor :title, :starting_date, :length, :attendees

	def initialize

		puts "Salut, tu veux créer un événement ? Cool !"
		puts "Commençons, quel est le nom de l'événement ?"
		print ">"
		@title = gets.chomp

		puts "Super, quand aura-t-il lieu ?"
		print ">"
		@starting_date = gets.chomp

		puts "Au top, combien de temps en minutes va-t-il durer ?"
		print ">"
		@length = gets.to_i

		puts "Génial, qui va participer ? Balance leurs e-mails"
		print ">"
		@attendees = gets.to_s

		puts "Super c'est noté, à bientôt !"


	end



end

Binding.pry