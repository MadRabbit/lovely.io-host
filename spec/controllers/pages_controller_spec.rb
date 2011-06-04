require 'spec_helper'

describe PagesController do
  describe "#show" do
    describe "when a page exists" do
      before do
        get :show, :id => 'about'
      end

      it "should send 200 ok back" do
        response.should be_ok
      end

      it "should render 'pages/index'" do
        response.should render_template('about')
      end
    end

    describe "when a page doesn't exists" do
      before do
        get :show, :id => "non existing"
      end

      it "should set the 404 response status" do
        response.status.should == 404
      end

      it "should render 404 error" do
        response.should render_template('404')
      end
    end
  end
end
