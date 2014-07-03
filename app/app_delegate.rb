class AppDelegate
  attr_accessor :van_hoorden_sounds, :miller_and_heise_sounds, :window, :subject, :test_count, :doing_part_2

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    start_experiment
  end

  def start_experiment
    self.test_count = 0
    self.doing_part_2 = false
    self.van_hoorden_sounds = NSFileManager.defaultManager.contentsOfDirectoryAtPath(NSBundle.mainBundle.resourcePath, error:nil).select {|file| file =~ /vn/}
    self.van_hoorden_sounds.map! {|file| Tone.new(file)}
    van_hoorden_dupe = self.van_hoorden_sounds.dup
    self.van_hoorden_sounds = self.van_hoorden_sounds + van_hoorden_dupe
    NSLog "#{self.van_hoorden_sounds.size}"
    self.miller_and_heise_sounds = NSFileManager.defaultManager.contentsOfDirectoryAtPath(NSBundle.mainBundle.resourcePath, error:nil).select {|file| file =~ /mh/}
    self.miller_and_heise_sounds.map! {|file| Tone.new(file)}
    # NSLog "#{self.van_hoorden_sounds.size} #{self.miller_and_heise_sounds.size}"
    self.window.rootViewController = TestSubjectInfoController.new
    self.window.makeKeyAndVisible
    true
  end
end
