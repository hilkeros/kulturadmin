class AddOrganisationRefToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :organisation, foreign_key: true
  end
end
