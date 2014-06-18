describe "Tone" do
	context "Van Noorden tone" do
		let(:tone) {Tone.new 'vn.mp3'}

		it 'is a Van Noorden type'
			tone.type.should eq 'Van Noorden'
		end

		it 'has the Van Noorden layout'
			tone.layout.should be_a VanNoordenLayout
		end

		it 'is playable and calls back when finished'
		end
	end

	context "Miller & Heise tone" do

		let(:tone) {Tone.new 'mh.mp3'}

		it 'is a Miller & Heise type'
			tone.type.should eq 'Van Noorden'
		end

		it 'has the Miller & Heise layout'
			tone.layout.should be_a VanNoordenLayout
		end

		it 'is playable and calls back when finished'
		end

	end
end
