class Event < ApplicationRecord
  
  belongs_to :admin, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :attendances
  has_many :attendences
  validates_presence_of :start_date, :duration, :title, :description, :price, :location
  validates :duration, numericality: { only_integer: true, greater_than: 0 }, inclusion: { in: [5, 10, 15, 20, 25, 30, 60, 90, 120] }
  validates :title, length: { in: 5..140 }
  validates :description, length: { in: 20..1000 }
  validates :price, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 1000 }
  

  validates :image_filename, presence: true



end
