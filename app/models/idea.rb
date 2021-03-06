require 'gollum-lib'
class Idea < ActiveRecord::Base
  belongs_to :user

  FORMAT = :markdown
  WIKI   = Rails.root.join("db", "wiki.git")

  after_create  :create_page
  after_update  :update_page
  after_destroy :delete_page


  def author
    page.version.author.name.gsub(/<>/, '')
  end

  def last_modified_date
    page.version.authored_date
  end

  def content
    page.formatted_data
  end

  def raw_content
    page.raw_data
  end

  private
 
  def wiki
    @@golum ||= Gollum::Wiki.new(WIKI)
  end
 
  def page
    wiki.page(self.name)
  end  
 
  def create_page
    wiki.write_page(self.name, FORMAT, self.description || '' , commit_message)
  end
 
  def update_page
    wiki.update_page(page, page.name, page.format, self.description || self.raw_content, commit_message)
  end
 
  def delete_page
    wiki.delete_page(page, commit_message)
  end

  def commit_message
    user = User.find_by_id(self.user_id)
    {:message => self.name, :name => user.name, :email => user.email}
  end

end
