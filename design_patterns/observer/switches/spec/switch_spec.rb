require "spec_helper"

describe Switch do
  describe "state" do
    context 'when initialized' do
      it "should return OFF with name" do
        switch = Switch.new('Dummy switch')
        switch.state.should be_equal(:off)
        switch.off?.should be_true
      end

      it "should return ON with name and state as ON" do
        switch = Switch.new('Dummy switch', :on)
        switch.state.should be_equal(:on)
        switch.on?.should be_true
      end
    end

    context 'when changed' do
      let(:switch) { Switch.new('Dummy switch') }
      
      it 'should turn on if already off' do
        switch.off?.should be_true
        switch.change_state.should be_equal(:on)
      end

      it 'should turn off if already on' do
        switch.state = :on
        switch.on?.should be_true
        switch.change_state.should be_equal(:off)
      end

      context 'appliance(s) state also changes' do
        before(:each) do
          switch.off?.should be_true
          @appliance = Appliance.new('Fan')
          switch.add_observer(@appliance)
        end

        it 'should turn on if switch is on' do
          @appliance.off?.should be_true
          switch.change_state
          @appliance.on?.should be_true
        end

        it 'should turn off if switch is off' do
          switch.state = :on
          @appliance.on?.should be_true
          switch.change_state
          @appliance.off?.should be_true
        end
      end
    end
  end
end
