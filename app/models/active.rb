class Active
  include ActiveModel::Validations

  attr_accessor :name, :email, :token

  validates :title, presence: true
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
end
