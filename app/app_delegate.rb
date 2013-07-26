class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    controller  = TapController.alloc.initWithNibName(nil, bundle: nil)
   
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

     

     tab_controller = UITabBarController.alloc.initWithNibName(nil,bundle:nil)

     alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)
     #other_controller.title = "Other"
     #other_controller.view.backgroundColor = UIColor.purpleColor


     tab_controller.viewControllers = [alphabet_controller,nav_controller]

     @window.rootViewController = tab_controller

    true
  end
end
