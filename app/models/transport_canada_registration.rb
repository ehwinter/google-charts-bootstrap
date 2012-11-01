class TransportCanadaRegistration < ActiveRecord::Base
  attr_protected :whynot
  
  # create the user associated objects
  def find_or_create_user

    # create the user  
    email = self.accesscode.to_s+"@shuttlechallenge.ca"
    user = User.where(email: email).first

    if user.nil? # no duplicate users please
      password = self.accesscode
      name = "#{self.firstname} #{self.lastname}"
      user = User.new(name: name, email: email, password: password)

      
      #create the access object for this user
      user.access = Access.new(code: password)



      #device
      user.device= Device.new(device: self.logger_id)
      user.save!

    end
    user
  end

end
