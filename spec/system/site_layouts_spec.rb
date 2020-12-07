require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do
  describe "top layout" do    
    it "contains root link" do
      visit root_path
      expect(page).to have_link nil, href: root_path
    end

    it "contains login link" do
      visit root_path
      expect(page).to have_link 'Login', href: login_path
    end
    
    it "contains admin link" do
      visit root_path
      expect(page).to have_link nil, href: rails_admin_path
    end
  end
end
