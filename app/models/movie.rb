class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :address
  has_many :actors, through: :actor_movies
  has_and_belongs_to_many :categories
end
