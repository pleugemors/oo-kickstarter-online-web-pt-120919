class Project
  
  def initialize(name)
    @title = name 
    @backers = []
  end
  
  attr_reader :title, :backers 
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
    
  end
  
end