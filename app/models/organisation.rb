class Organisation < ApplicationRecord
	has_many :events
	has_many :content_blocks
	has_many :user_organisation_relations
	has_many :admin_users, through: :user_organisation_relations

	def default_end_time
		default_start_time + 1.hour if default_start_time.present?
	end
end
