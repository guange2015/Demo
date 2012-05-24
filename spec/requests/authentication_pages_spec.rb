require 'spec_helper'

describe "AuthenticationPages" do
  subject {page}

  describe "login" do
    before {visit login_path}
    describe "visit login page" do
      it{should have_selector('h1', text:'login')}
    end

    let(:user) {User.create(name:'ExampleUser', email:'hah@gmail.com',
        password: 'foobar', password_confirmation:'foobar')}

    describe "with a valid password" do
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button 'login'
      end

      it {should have_selector('h1', text:user.name)}
    end

    describe "with a invalid password" do
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: 'invalid'
        click_button 'login'
      end

      it {should have_content('error')}
      
    end
  end
end
