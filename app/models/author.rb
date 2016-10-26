class Author < ActiveRecord::Base
  validates :name, presence: true
  # ``{ message: "must be given please" }
  # , message: "no name"
  validates :email, uniqueness: true

  # { message: "must be given please" }
  # , message: "email not unique"
  validates :phone_number, length: {is: 10}
    # message: "phone number invalid"}
end
