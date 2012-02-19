require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :salutation => "Salutation",
      :fname => "Fname",
      :mname => "Mname",
      :lname => "Lname",
      :phone_no => 1,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Salutation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
