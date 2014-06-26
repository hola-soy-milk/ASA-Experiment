module SoundsHelpers

	def file_prefix(tone)
		"#{subject.id}_#{subject.alcohol ? "A" : "N"}_#{tone.info}"
	end

	def app_delegate
		UIApplication.sharedApplication.delegate
	end

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

	def set_subject(subject)
		UIApplication.sharedApplication.delegate.subject = subject
	end

	def subject
		UIApplication.sharedApplication.delegate.subject
	end

	def load_controller(controller)
		app_window.rootViewController = controller
		app_window.makeKeyAndVisible
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

	def start_miller_and_heise_test
		tone = miller_and_heise_sounds.sample
		while tone.answer do
			tone = miller_and_heise_sounds.sample
		end
		app_window.rootViewController =  StreamTestController.alloc.initWithTone(tone)
		app_window.makeKeyAndVisible
	end

end
