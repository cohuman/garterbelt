# -*- encoding : utf-8 -*-
class GarterbeltTemplate < Garterbelt::View
  needs :user, :flash => nil
  
  def content
    html do
      head do
        page_title "Benchmarking Templates"
        _link :rel => 'stylesheet', :href => '/stylesheet/application.css'
        _link :rel => 'stylesheet', :href => '/stylesheet/ie.css'
      end
      
      body :class => self.class.to_s.underscore do
        div :id => :wrapper, :class => 'line' do
          if flash
            div :id => 'flash', :class => 'inner' do
              text flash
            end
          end
          
          dl :class => ['inner', 'user_info'] do
            dt 'username'
            dd user.username
            
            dt 'email'
            dd user.email
            
            dt 'name'
            dd user.name
            
            dt 'number of assigned tasks'
            dd rand(20)
          end
        end
      end
    end
  end
end
