module SoundsHelpers

	def finished_with_van_noorden?
		van_noorden_sounds.all? {|tone| tone.answer}
	end

	def finished_with_miller_and_heise?
		miller_and_heise_sounds.all? {|tone| tone.answer}
	end

	def van_noorden_sounds
		UIApplication.sharedApplication.delegate.van_hoorden_sounds
	end

	def miller_and_heise_sounds
		UIApplication.sharedApplication.delegate.miller_and_heise_sounds
	end

	def app_window
		UIApplication.sharedApplication.delegate.window
	end

	def start_van_noorden_test
		tone = van_noorden_sounds.sample
		while tone.answer do
			tone = van_noorden_sounds.sample
		end
		app_window.rootViewController =  StreamTestController.alloc.initWithTone(tone)
		app_window.makeKeyAndVisible

	end

	def star_miller_and_heise_test
		tone = miller_and_heise_sounds.sample
		while tone.answer do
			tone = miller_and_heise_sounds.sample
		end
		app_window.rootViewController =  StreamTestController.alloc.initWithTone(tone)
		app_window.makeKeyAndVisible
	end

end
