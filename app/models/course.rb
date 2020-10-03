class Course < ActiveRecord::Base
  validates :short_name, presence: true, length:{minimum: 5, maximum: 50}
  validates :name, presence: true, length:{minimum: 3, maximum: 15}
  validates :desciption, presence: true, length:{minimum: 10, maximum: 300}
end
