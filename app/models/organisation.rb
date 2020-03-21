class Organisation < ApplicationRecord
	has_many :events
	has_many :user_organisation_relations
	has_many :admin_users, through: :user_organisation_relations
end
