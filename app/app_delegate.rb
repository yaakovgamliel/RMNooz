class AppDelegate
  attr_accessor :window
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    news_view_controller = NewsViewController.new
    navigation_view_controller = UINavigationController.alloc.initWithRootViewController(news_view_controller)
    @window.rootViewController = navigation_view_controller
    @window.makeKeyAndVisible
    true
  end
end
