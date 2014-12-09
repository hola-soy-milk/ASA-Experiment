class AppDelegate
  attr_accessor :van_hoorden_sounds, :miller_and_heise_sounds, :window, :subject, :test_count, :doing_part_2, :time_of_test

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    start_experiment
  end

  def start_experiment
    @time_of_test = Time.now.strftime("%Y%m%d_%H%M%S")

    @test_count = 0
    @doing_part_2 = false
    file_manager = NSFileManager.defaultManager
    @van_hoorden_sounds = file_manager.contentsOfDirectoryAtPath(NSBundle.mainBundle.resourcePath, error:nil).select { |file| file =~ /vn/ }
    @van_hoorden_sounds = @van_hoorden_sounds + @van_hoorden_sounds.dup
    @van_hoorden_sounds.map! { |file| Tone.new(file) }
    @miller_and_heise_sounds = file_manager.contentsOfDirectoryAtPath(NSBundle.mainBundle.resourcePath, error:nil).select {|file| file =~ /mh/}
    @miller_and_heise_sounds.map! { |file| Tone.new(file) }
    @window.rootViewController = TestSubjectInfoController.new
    @window.makeKeyAndVisible
    true
  end
end
