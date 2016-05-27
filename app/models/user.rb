class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

  has_one :identity
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :scheduled_shifts
  has_many :shifts, through: :scheduled_shifts

  accepts_nested_attributes_for :shifts

end
