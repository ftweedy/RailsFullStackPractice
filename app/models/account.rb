class Account < ApplicationRecord

    PASSWORD_NUMBER = /\A (?=.*\d)/
    PASSWORD_SYMBOL = /\A (?=.*[[:^alnum:]])/

    validates :password, :username, uniqueness: true
    validates :password, format: { with: PASSWORD_NUMBER, :message => 'must contain a number'}
    validates :password, format: { with: PASSWORD_SYMBOL, :message => 'must contain a special character'}
    validates :password, :username, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
end
