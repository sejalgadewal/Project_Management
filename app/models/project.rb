class Project < ApplicationRecord
    belongs_to :team
    belongs_to :user

    accepts_nested_attributes_for :team


end
