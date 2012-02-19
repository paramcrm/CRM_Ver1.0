require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :phone_no => 1,
      :email => "MyString",
      :city => "MyString",
      :country => "MyString",
      :zipcode => "MyString"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_name", :name => "account[name]"
      assert_select "input#account_phone_no", :name => "account[phone_no]"
      assert_select "input#account_email", :name => "account[email]"
      assert_select "input#account_city", :name => "account[city]"
      assert_select "input#account_country", :name => "account[country]"
      assert_select "input#account_zipcode", :name => "account[zipcode]"
    end
  end
end
