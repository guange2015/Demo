require 'spec_helper'

describe User do
  subject {@user}
  before {@user = User.new(name:'ExampleUser', email:'hah@gmail.com',
        password: 'foobar', password_confirmation:'foobar') }

  it {should be_valid}
  it {should respond_to(:name)}
  it {should respond_to(:email)}

  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}

  describe "Login" do
    it "should authenticate success when use valid password" do
      @user.authenticate('foobar').should be_true
    end
    it "should authenticate fail when use invalid password" do
      @user.authenticate('invalid').should be_false
    end
  end
end
