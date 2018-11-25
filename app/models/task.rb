class Task < ApplicationRecord
   belongs_to :project
   has_many :users, dependent: :destroy
   validates :status, inclusion: { in: %w(new inprogress done),
                                   message: "there is could be enum(new,in_progress,done)"}
end
