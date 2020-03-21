class UserOrganisationRelation < ApplicationRecord
  belongs_to :organisation
  belongs_to :admin_user
end
