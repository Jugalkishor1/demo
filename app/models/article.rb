class Article < ApplicationRecord
  has_many :comments, dependent: :destroy  #, optional: true 
  #validates :title, presence: true
end





# class Article < ApplicationRecord
#   #include Visible

#   has_many :comments , dependent: :destroy  
#   #The :destroy is to cause the associated object to also be destroyed when its owner is destroyed.
  
#   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

#   # validates :title, presence: true
#    validates :title, format: { with: /\A[a-zA-Z]+\z/,
#     message: "only allows letters" }  # when u want specific characters  :without :- when u dont want this symbols or charcters

#   validates :body, presence: true, length: { minimum: 3 }
#   # validates :agree, acceptance: true

# end
 

 # validates :name, length: { minimum: 2 }
 #  validates :bio, length: { maximum: 500 }
 #  validates :password, length: { in: 6..20 }
 #  validates :registration_number, length: { is: 6 }

# class Article < ApplicationRecord

#   has_many :comments , dependent: :destroy  
#   validates :title, :body, :email, presence: true
# end

# custom validators :------

# class EmailValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#        record.errors.add attribute, (options[:message] || "is not an email")
#     end
#   end
# end

# class Article < ApplicationRecord
#   has_many :comments , dependent: :destroy  
#   validates :email, presence: true, email: true

#   validates :password, :format => {:with => /\A((?:[-a-zz])+[a-z]{5,})\z/i, message: "must be at least 6 characters and include one number and one letter."}
# end



# class Article < ApplicationRecord

#   has_many :comments , dependent: :destroy
#   validate :expiration_date_cannot_be_in_the_past,

#   def expiration_date_cannot_be_in_the_past
#     if title == "jugal"
#       errors.add(:title, "can't use other name use jugal only")
#     end
#   end
# end
=begin
class Article < ApplicationRecord
  has_many :comments , dependent: :destroy
        # validates :title, presence: true, on: :update #:on option lets you specify when the validation should happen
        #validates :title, presence: true, on: :create  

        # validates :email, :uniqueness, true
 validates :email, presence: true, uniqueness: true, allow_nil: false
 
  after_validation :check_email

  def check_email
    puts "Please enter valid email"
  end
end
=end

# class Article < ApplicationRecord
#   has_many :comments , dependent: :destroy

#   validates :email, presence: true, uniqueness: true

#   after_create :correct_email

#   def correct_email
#     email = email.downcase!
#   end
# end
# Article.first.update()

=begin
class Article < ApplicationRecord
  has_many :comments , dependent: :destroy
  validates :title, presence: true

    before_validation :a
    after_validation :b
    #before_save :c
    #before_create :d
    #after_create :e
    #after_save :f
    after_commit :g
    #before_update :h
    #after_update :i
    before_destroy :j
    after_destroy :k
    
    def a
      puts 'a'
    end

    def b
      puts 'b'
    end

    def c
      puts "c"
    end

    def d
      puts "d"
    end

    def e
      puts "e"
    end

    def f
      puts "f"
    end
    def g
      puts "g"
    end
    def h
      puts "h"
    end
    def i
      puts "i"
    end

    def j
      puts "j"
    end
    def k
      puts "k"
    end
end
=end
    # before_validation :a
    # after_validation :b
    # before_save :c
    # before_update :h
    # after_update :i
    # after_save :f
    # after_commit :g
    # #before_create :d
    # #after_create :e