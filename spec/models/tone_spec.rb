describe "Tone" do
	context "Van Noorden tone" do
		before { @tone = Tone.new 'vn.mp3' }

		it 'is a Van Noorden type' do
			@tone.type.should.equal 'Van Noorden'
		end

		it 'has the Van Noorden layout' do
			@tone.layout.should.be.a.kind_of VanNoordenLayout
		end

		it 'is playable and calls back when finished' do
			#TODO
		end
	end

	context "Miller & Heise tone" do

		before { @tone = Tone.new 'mh.mp3' }

		it 'is a Miller & Heise type' do
			@tone.type.should.equal 'Miller & Heise'
		end

		it 'has the Miller & Heise layout' do
			@tone.layout.should.be.a.kind_of MillerAndHeiseLayout
		end

		it 'is playable and calls back when finished' do
		#TODO
		end

	end
end
