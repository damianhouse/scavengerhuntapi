class User < ActiveRecord::Base

  # notice this comes BEFORE the include statement below
  # also notice that :confirmable is not included in this block
  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable,
         :omniauthable

  # note that this include statement comes AFTER the devise block above
  include DeviseTokenAuth::Concerns::User
  has_many :players, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  before_save :downcase_email

  def last_ids
    player = Player.where(user: self)
    last_team = player != [] && player.last.team ? player.last.team : nil
    last_team_id = last_team ? last_team.id : nil
    last_game_id = last_team ? last_team.game_id : nil
    last_player_id = player != [] ? player.last.id : nil
    {
      last_team_id: last_team_id, 
      last_player_id: last_player_id,
      last_game_id: last_game_id,
    }
  end

  def downcase_email
    self.email.downcase!
  end
end