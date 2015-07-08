class Request < ActiveRecord::Base
  scope :trapped_by, -> (trap_id) { where("trap_id = ?", trap_id) }

end
