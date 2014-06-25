module Helpers
	def set_subject(subject)
		UIApplication.sharedApplication.delegate.subject = subject
	end

	def subject
		UIApplication.sharedApplication.delegate.subject
	end
end
