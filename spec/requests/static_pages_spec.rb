require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the h1 'Evil Tests'" do
		  visit '/static_pages/home'
		  page.should have_selector('h1', :text => 'Evil Tests')
		end
		it "should have the correct title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Evil Tests - Home")
		end
	end
	describe "Help page" do
		
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the correct title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Evil Tests - Help")
		end
   end
   describe "Download page" do
		it "should have the h1 'Download'" do
			visit '/static_pages/download'
			page.should have_selector('h1', :text => 'Download')
		end
		it "should have the correct title" do
			visit '/static_pages/download'
			page.should have_selector('title', :text => "Evil Tests - Download")
		end
	end
	describe "Legal" do
		it "should have the h1 'Legal'" do
			visit '/static_pages/legal'
			page.should have_selector('h1', :text => 'Legal');
		end
		it "should have the correct title" do
			visit '/static_pages/legal'
			page.should have_selector('title', :text => "Evil Tests - Legal")
		end
	end
end