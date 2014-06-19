class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = StreamTestController.alloc.initWithSoundFile('vn.wav')
    @window.makeKeyAndVisible
    true
  end
end
