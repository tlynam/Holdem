class Player < ActiveRecord::Base
  belongs_to :game
  validates :name, presence: true, uniqueness: true
end
