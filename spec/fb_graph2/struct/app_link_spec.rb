require 'spec_helper'

describe FbGraph2::Struct::AppLink do
  subject { described_class }
  its(:registered_attributes) { should == {raw: [:url]} }

  describe FbGraph2::Struct::AppLink::Native do
    its(:registered_attributes) { should == {raw: [:url, :app_name]} }
  end

  describe FbGraph2::Struct::AppLink::Native::IOS do
    its(:registered_attributes) { should == {raw: [:url, :app_name, :app_store_id]} }

    describe FbGraph2::Struct::AppLink::Native::IOS::IPhone do
      its(:registered_attributes) { should == {raw: [:url, :app_name, :app_store_id]} }
    end
  end

  describe FbGraph2::Struct::AppLink::Native::Android do
    its(:registered_attributes) { should == {raw: [:url, :app_name, :class, :package]} }
  end

  describe FbGraph2::Struct::AppLink::Native::WindowsPhone do
    its(:registered_attributes) { should == {raw: [:url, :app_name, :app_id]} }
  end

  describe FbGraph2::Struct::AppLink::Web do
    its(:registered_attributes) { should == {raw: [:url, :should_fallback]} }
  end
end