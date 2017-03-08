class AllowedUserViewer < ActiveRecord::Base
  belongs_to :user, optional: true

  def create
  end

end
