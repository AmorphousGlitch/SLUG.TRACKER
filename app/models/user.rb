class User < ApplicationRecord
  has_secure_password
  has_many :laps, dependent: :destroy

  validates :username, presence: true, uniqueness: true

  before_create :generate_share_token

  private

  def generate_share_token
    self.share_token = SecureRandom.urlsafe_base64(8)
  end
end
