class MachineOwnership < ApplicationRecord
  belongs_to :user
  belongs_to :arcade_machine
end
