class UserLog < ActiveRecord::Base
  validates :log_data, presence: true    
    
  belongs_to :user
end
