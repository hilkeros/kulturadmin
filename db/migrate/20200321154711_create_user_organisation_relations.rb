class CreateUserOrganisationRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_organisation_relations do |t|
      t.references :organisation, null: false, foreign_key: true
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
