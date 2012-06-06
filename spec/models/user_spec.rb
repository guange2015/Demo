require 'spec_helper'

describe User do
  subject {user}
  let (:user) {FactoryGirl.build(:user)}

  it {should be_valid}
  it {should respond_to(:name)}
  it {should respond_to(:email)}

  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}



  describe "#authenticate" do
    it "should authenticate success with valid password" do
      user.authenticate('foobar').should be_true
    end
    it "should authenticate fail with invalid password" do
      user.authenticate('invalid').should be_false
    end
  end
end
# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

