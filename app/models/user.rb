class User < ActiveRecord::Base
  attr_accessible :email, :username

  validates :email, :presence => true
  validates :username, :presence => true

  before_save :downcase_email

  protected
  def downcase_email
    self.email.downcase!
  end
end
