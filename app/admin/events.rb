ActiveAdmin.register Event do

 
  permit_params :title, :description, :start_time, :end_time, :organisation_id, :nationality,
                :youtube_link, :website_link, :facebook_link, :instagram_link, :spotify_link
  

  form do |f|
    f.semantic_errors *f.object.errors.keys
	  f.object.organisation = current_admin_user.organisations&.first
    f.object.start_time = f.object.start_time || f.object.organisation&.default_start_time
	  f.object.end_time = f.object.end_time || f.object.organisation&.default_end_time
	  
    f.inputs do
  		f.input :organisation  
  		f.input :title
    	f.input :description, as: :quill_editor
    	f.input :start_time, as: :datetime_picker
    	f.input :end_time, as: :datetime_picker
      f.input :nationality
      f.input :youtube_link
      f.input :website_link
      f.input :facebook_link
      f.input :instagram_link
      f.input :spotify_link
    	end
  	
    f.actions
  end

  show do
  	attributes_table do
  		row :title
      row (:description) { |event| raw(event.description) }
  		row :start_time
  		row :end_time
      row :nationality
      row :youtube_link
      row :website_link
      row :facebook_link
      row :instagram_link
      row :spotify_link
  	end
  end
end
