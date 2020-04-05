ActiveAdmin.register Event do

 
  permit_params :title, :description, :start_time, :end_time, :organisation_id

  form do |f|
  	f.semantic_errors *f.object.errors.keys
	f.object.start_time = f.object.start_time || f.object.organisation&.default_start_time
	f.object.end_time = f.object.end_time || f.object.organisation&.default_start_time + 1.hour 
	  f.inputs do
		f.input :organisation  
		f.input :title
  		f.input :description, as: :quill_editor
  		f.input :start_time, as: :datetime_picker
  		f.input :end_time, as: :datetime_picker
  	end
  	f.actions
  end

  show do
  	attributes_table do
  		row :title
  		row :description
      row (:description) { |event| raw(event.description) }
  		row :start_time
  		row :end_time
  	end
  end
end
