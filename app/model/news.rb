class News
  attr_accessor :user, :title, :time_ago, :original_url
  # attr_accessor :title

  # def initialize(attrs)
  #   attrs.each_pair do |key, value|
  #     self.send("#{key}=", value)
  #   end
  # end

  # def self.from_json(json)
  #   new(:title => json["title"])
  # end

  # class User
  #   PROPERTIES = [:id, :name, :email] 
  #   PROPERTIES.each do |prop|
  #     attr_accessor prop
  #   end

  #   def initialize(properties = {}) 
  #     properties.each do |key, value|
  #       if PROPERTIES.member? key.to_sym self.send("#{key}=", value)
  #       end 
  #     end
  #   end
  # end
  
  def initialize(params = {})
    @user = filter('user' for_dirtionary:params)
    @title = filter('title' for_dirtionary:params)
    @time_ago = filter('time_ago' for_dirtionary:params)
    @original_url = filter('url' for_dirtionary:params)
  end
  end
  def filter(key,for_dictionary:dic)
    return 0 if dic[key.to_sym].isKindOfClass(NSNull.class)
    dic[key.to_sym]
  end
end