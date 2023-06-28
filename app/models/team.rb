class Team < ApplicationRecord
    has_many :projects, class_name: 'Project', dependent: :destroy
    has_many :users 

    accepts_nested_attributes_for :users, allow_destroy: true

end
