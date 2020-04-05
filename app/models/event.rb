class Event < ApplicationRecord

	belongs_to :organisation
	default_scope { order(start_time: :asc) }
end
