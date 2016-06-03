class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

  validates :name, uniqueness: true
  validates :name, presence: true, on: :update
  validates :email, presence: true, on: :update
  # validates :phone, length: { is: 10, message: "must include 10 numbers" }, on: :update, unless: :phone_blank

  has_one :identity
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :scheduled_shifts
  has_many :shifts, through: :scheduled_shifts
  has_one :request
  accepts_nested_attributes_for :shifts

  def self.best_users
    self.all.where(rating: 'high')
  end

  def phone_blank
    self.phone.to_s == ""
  end

  def slug
    self.name.downcase.gsub(" ","-")
  end

end
