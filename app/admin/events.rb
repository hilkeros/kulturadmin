ActiveAdmin.register Event do

 
  permit_params :title, :description, :start_time, :end_time, :organisation_id, :youtube_link, :nationality

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
  	end
  end
end
