class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true, uniqueness: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: :user_id
  has_many :events, through: :attendances
  has_many :attendances
  has_many :administered_events, class_name: 'Event', foreign_key: 'admin_id'





  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end





end

  