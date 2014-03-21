class NewsViewController < UIViewController
  def viewDidLoad
    super
    setup_stylesheet
  end
  
  #Some stylsheet stuff

  def setup_stylesheet
    view.backgroundColor = UIColor.green
  end
end
