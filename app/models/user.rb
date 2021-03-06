# Effectively: require 'roles_mongo_mapper/strategy/single/admin_flag'
use_roles_strategy :admin_flag

class User
  include MongoMapper::Document
  include Roles::MongoMapper 
  strategy :admin_flag, :default

  valid_roles_are Cream.roles#:admin, :guest         

# Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# validates_presence_of :attribute

# Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# belongs_to :model
# many :model
# one :model

# Callbacks ::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
# before_create :your_model_method
# after_create :your_model_method
# before_update :your_model_method 

# Attribute options extras ::::::::::::::::::::::::::::::::::::::::
# attr_accessible :first_name, :last_name, :email

# Validations
# key :name, :required =>  true      

# Defaults
# key :done, :default => false

# Typecast
# key :user_ids, Array, :typecast => 'ObjectId'

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  key :email
  key :password
  key :password_confirmation
  key :remember_me

end