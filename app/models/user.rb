class User < ApplicationRecord
  has_secure_password
  has_many :laps, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, allow_nil: true

  before_create :generate_share_token

  private

  def generate_share_token
    self.share_token = SecureRandom.urlsafe_base64(8)
  end
end
