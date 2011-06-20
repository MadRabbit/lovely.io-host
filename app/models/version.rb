class Version < ActiveRecord::Base
  belongs_to :package

  validates_presence_of :package_id, :number
  validates_format_of :number, :with => /^\d+\.\d+\.\d+(-[a-z0-9\.]+)?$/i, :allow_blank => true
  validates_uniqueness_of :number, :scope => :package_id, :allow_blank => true

end
