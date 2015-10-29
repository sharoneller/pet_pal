module PetsHelper
	def image_for(pet)
   	if pet.image_file_name.blank?
     	image_tag('placeholder.png')
   	else
     image_tag(pet.image_file_name)
   end
 end
end
