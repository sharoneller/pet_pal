class PetFindersController < ApplicationController
	def index
		petfinder = Petfinder::Client.new('8991560566161bd2cc8810f20188b537', '226df73194b86c99403270e76fba91da')
		@shelter_pets = petfinder.find_pets('dog', '90210')
	end
end

