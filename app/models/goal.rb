class Goal < ActiveRecord::Base
  validates :content, presence: true
  validate  :deadline_is_possible?
    
  belongs_to :user
  def deadline_is_possible?
    if deadline <= Time.zone.now
      errors.add(:deadline, 'deadline must be possible')
    end
  end
end
