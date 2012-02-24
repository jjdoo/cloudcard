require 'digest/sha1'
class Store < ActiveRecord::Base
  validates_presence_of :store_id
  validates_uniqueness_of :store_id
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  validate :password_non_blank
  def self.authenticate(store_id, password)
    begin
    store = self.find_by_store_id(store_id)
    rescue =>e
      ##############
  end
    if store
      expected_password = encrypted_password(password, store.salt)
      if store.hashed_password != expected_password
        store = nil
      end
    end
    store
  end
  # 'password' is a virtual attribute
  def password
    @password
  end
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.store_password = User.encrypted_password(self.password, self.salt)
  end
  private
  def password_non_blank
    errors.add(:password, "Missing password" ) if store_password.blank?
  end
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
end
