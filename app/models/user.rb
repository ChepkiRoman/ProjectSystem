class User < ApplicationRecord
  belongs_to :task
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :password, length: { minimum: 8 }
  validates :admin, inclusion: { in: %w(true false) ,
                                 message: "true/false please" }
end
