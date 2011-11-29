module CategoriesHelper
  
  def list_categories(project)
    unless project.categories.empty?
      list = []
      project.categories.each do |category|
        list << normalize_name(category)
      end
      list.join(" ")
    end
  end
  
  def normalize_name(category)
    category = category.title.downcase.gsub(" ","_")
  end
  
end
