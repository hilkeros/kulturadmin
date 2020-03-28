ActiveAdmin.register Event do

 
  permit_params :title, :description, :start_time, :end_time, :organisation_id

  form do |f|
  	f.semantic_errors
  	f.inputs do
		f.input :organisation  
		f.input :title
  		f.input :description
  		f.input :start_time, as: :datetime_picker
  		f.input :end_time, as: :datetime_picker
  	end
  	f.actions
  end

  show do
  	attributes_table do
  		row :title
  		row :description
  		row :start_time
  		row :end_time
  	end
  end
end
