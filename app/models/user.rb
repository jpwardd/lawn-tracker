class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # STATES = [
  #   "AL",
  #   "AK",
  #   "AZ",
  #   "AR",
  #   "CA",
  #   "CO",
  #   "CT",
  #   "DE",
  #   "FL",
  #   "GA",
  #   "HI",
  #   "ID",
  #   "IL",
  #   "IN",
  #   "IA",
  #   "KS",
  #   "KY",
  #   "LA",
  #   "ME",
  #   "MD",
  #   "MA",
  #   "MI",
  #   "MN",
  #   "MS",
  #   "MO",
  #   "MT",
  #   "NE",
  #   "NV",
  #   "NH",
  #   "NJ",
  #   "NM",
  #   "NY",
  #   "NC",
  #   "ND",
  #   "OH",
  #   "OK",
  #   "OR",
  #   "PA",
  #   "RI",
  #   "SC",
  #   "SD",
  #   "TN",
  #   "TX",
  #   "UT",
  #   "VT",
  #   "VA",
  #   "WA",
  #   "WV",
  #   "WI",
  #   "WY"
  # ]

  has_many :customers
  has_many :jobs
  

  # validates_presence_of :first_name, :last_name, :city, :state
  # validates_format_of [:first_name, :last_name, :city], {with: /\A[a-zA-Z]+\z/}
  # validates :state, inclusion: { in: STATES }
  validates :role, null: false
 

  def admin?
    role == "admin"
  end
end