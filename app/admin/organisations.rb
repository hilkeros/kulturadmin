ActiveAdmin.register Organisation do

  scope_to :current_admin_user

  permit_params :name, :default_start_time

  form do |f|
  	f.semantic_errors *f.object.errors.keys
  	f.inputs do
		f.input :name 
    f.input :default_start_time, as: :datetime_picker
  	end
  	f.actions
  end

  show do |o|

  	attributes_table do
  		row :name
  		row :default_start_time
  		row 'New event' do |o| link_to 'New event', new_admin_event_path(organisation_id: o.id) end
  	end

  	panel 'Events' do
      table_for o.events do
        column :start_time do |e| e.start_time end
        column :title do |e| link_to(e.title, admin_event_path(e)) end
      end
    end

  end
  
end
