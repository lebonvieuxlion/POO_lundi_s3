require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do

			anniversaire = Event.new("2019-01-13 09:00", 10, "anniversaire", ["truc@machin.com", "bidule@chose.fr"])
			expect(anniversaire.class) .to eq(Event)

		end
	end

end