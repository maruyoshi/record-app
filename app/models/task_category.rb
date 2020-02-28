class TaskCategory < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :task, optional: true
end
