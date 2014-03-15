require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  before {@user = User.new(name:'Example', email:'example@gmail.com')}

  subject{ @user }
 # it {should respond_to :name}
 # it {should respond_to :email}

 # it {should be_valid}

 # describe "when name is not present" do
 # 	before {@user.name = ""}
 # 	it {should_not be_valid}
 # end


#  describe "when email is not present" do
#  	before {@user.email = ""}
#  	it {should_not be_valid}
#  end


# describe "when name is too long" do
# 	before {@user.name = 'a'*51}
# 	it {should_not be_valid}
# end


 	
 describe "when email format is invalid" do
 	#before{@user.email = 'pippo@@@@@xxx.it'}
 	#it {should_not be_valid}
	it "should be invalid" do
	# 	address = "pippo.go@gmail.com"
	    @user.email = "palla.xxx@@@.it"
	 	expect(@user).not_to be_valid
	end
 end




end
