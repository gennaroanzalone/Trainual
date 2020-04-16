class User < ApplicationRecord
  before_validation :downcase_email
  validates :email, uniqueness: true
  validates_presence_of :name, :email, :title, :phone

  private

  def downcase_email
    self.email = email.downcase if email.present?
  end
end
