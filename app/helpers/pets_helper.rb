module PetsHelper
	def image_for(pet)
   	if pet.image_file_name.blank?
     	image_tag('placeholder.png')
   	else
     image_tag(pet.image_file_name)
   end
 end
# def format_date
 #	date = strftime(%B, %d, %Y) 
 #end
 	
 
end
