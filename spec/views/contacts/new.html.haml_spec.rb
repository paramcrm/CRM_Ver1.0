require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :salutation => "MyString",
      :fname => "MyString",
      :mname => "MyString",
      :lname => "MyString",
      :phone_no => 1,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_salutation", :name => "contact[salutation]"
      assert_select "input#contact_fname", :name => "contact[fname]"
      assert_select "input#contact_mname", :name => "contact[mname]"
      assert_select "input#contact_lname", :name => "contact[lname]"
      assert_select "input#contact_phone_no", :name => "contact[phone_no]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
