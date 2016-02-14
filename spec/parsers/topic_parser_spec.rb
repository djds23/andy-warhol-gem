require 'spec_helper'

describe TopicParser do


  describe '#groups' do

    context 'with 2 full groups' do

      before(:each) do
        expect_any_instance_of(described_class).to receive(
          :get_topic
        ).and_return(
          'prod[@dean + @johnny + @cjohnson < @kanye + @jayz + @damedash]'
        )
      end

      it 'returns an array of user names' do
        expect(described_class.new.groups).to eq [
          [
            '@dean',
            '@johnny',
            '@cjohnson',
          ],
          [
            '@kanye',
            '@jayz',
            '@damedash'
          ]
        ]
      end
    end
  end
end
