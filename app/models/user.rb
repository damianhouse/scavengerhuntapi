class User < ActiveRecord::Base

  # notice this comes BEFORE the include statement below
  # also notice that :confirmable is not included in this block
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable

  # note that this include statement comes AFTER the devise block above
  include DeviseTokenAuth::Concerns::User
  has_many :players
  validates :name, presence: true
  validates :email, uniqueness: true


  def last_team
    Player.where(user: self) != [] && Player.where(user: self).last.team ? Player.where(user: self).last.team : nil
  end

  def last_player
    Player.where(user: self) != [] ? Player.where(user: self).last : nil
  end
end