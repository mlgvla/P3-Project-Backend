class Review < ActiveRecord::Base
  belongs_to :clothing
  belongs_to :user
end
