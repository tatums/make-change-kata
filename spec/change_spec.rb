describe Change do

  context "when amount is 49" do
    it do
      expect( Change.from(49) ).to eq(
                                        [ {coin: 25, qty: 1},
                                          {coin: 10, qty: 2},
                                          {coin: 5, qty: 0},
                                          {coin: 1, qty: 4} ]
                                     )
    end
    context "and I want an array of coins returned" do
      it do expect(
                  Change.from(49, {return_coins: true})
                 ).to eq(
                         [ 25, 10, 10, 1, 1, 1, 1 ]
                        )
      end
    end
  end

  context "when amount is 50" do
    it do
      expect( Change.from(50) ).to eq(
                                        [
                                          {coin: 25, qty: 2},
                                          {coin: 10, qty: 0},
                                          {coin: 5, qty: 0},
                                          {coin: 1, qty: 0}
                                        ]
                                      )

    end
  end
  context "when amount is 50" do
    context "and I want an array of coins returned" do
      it { expect( Change.from(50, {return_coins: true}) ).to eq( [ 25, 25 ] ) }
    end
  end
end
