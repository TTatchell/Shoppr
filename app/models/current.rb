# makes Current.user accessible in view files.
class Current < ActiveSupport::CurrentAttributes
  attribute :user
end
