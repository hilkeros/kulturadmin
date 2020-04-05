ActiveAdmin.register ContentBlock do

  permit_params :title, :content, :key, :organisation_id

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.object.organisation = current_admin_user.organisations&.first
    
    f.inputs do
      f.input :organisation  
      f.input :key
      f.input :title
      f.input :content, as: :quill_editor
      end
    
    f.actions
  end

  show do
    attributes_table do
      row :key
      row :title
      row (:content) { |block| raw(block.content) }
    end
  end
  
end
