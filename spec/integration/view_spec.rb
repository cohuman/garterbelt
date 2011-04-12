require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Garterbelt::View, "Integration" do
  def file(name)
    File.read(File.dirname(__FILE__) + "/expectations/#{name}.html")
  end
  
  it 'views with tags should render and nest correctly' do
    ViewWithContentTags.new.render.should == file("view_with_tags")
  end
  
  describe 'variables' do
    it 'calls methods on passed objects' do
      user =  Hashie::Mash.new(:email => 'foo@example.com')
      ViewWithVars.new(:user => user).render.should == file('variables/view_with_user_email')
    end
    
    it 'uses optional params' do
      user =  Hashie::Mash.new(:name => 'foobar')
      ViewWithVars.new(:user => user, :params => {:remember_me => true}).render.should == file('variables/view_with_user_and_params')
    end
  end
  
  describe 'caching' do
    before do
      Garterbelt.cache.clear
      @user = Hashie::Mash.new(:id => 'foo_id', :upgradable? => true)
    end
    
    it 'renders it correctly the first time' do
      ViewWithCache.new(:user => @user).render.should == file('general_view')
    end
    
    it 'renders correctly from the cache' do
      ViewWithCache.new(:user => @user).render
      ViewWithCache.new(:user => @user).render.should == file("general_view")
    end
  end
  
  describe 'partials' do
    before do
      @user = Hashie::Mash.new(:id => 'foo_id', :upgradable? => true)
    end
    
    it 'render correctly with class arguments on the partial' do
      ViewWithPartial.new(:user => @user).render.should == file("general_view")
    end
    
    it 'renders correctly with a view instance' do
      ViewWithPartial2.new(:user => @user).render.should == file('general_view')
    end
    
    it 'nests deeply' do
      MyPagelet.new(:user => @user).render.should == file('view_partial_nest')
    end
  end
end