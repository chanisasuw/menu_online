class User < ActiveRecord::Base
  include Paperclip::Glue
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def deliver_password_reset_instructions
    # reset_perishable_token!
    self.generate_reset_password_token!
    Notifier.password_reset_instructions(self).deliver
  end
end
