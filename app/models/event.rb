class MyValidator < ActiveModel::Validator
  def validate(event)
    if ( event.date && event.date <= Date.today )
      event.errors[:date] << "must be in the future"
    end
  end
end

class Event < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, uniqueness: true, presence: true
  validates_presence_of :date, :name, :email
  validates_with MyValidator
end
