require_relative '../spec_helper'

describe PokerController do
  describe "GET#index" do
    it "creates 4 hands" do
      poker = ::PokerHands.new

      h1 = Deck::Hand.new([Deck::Card.new("2", "C"), Deck::Card.new("1", "H"), Deck::Card.new("7", "C"), Deck::Card.new("5", "S"), Deck::Card.new("3", "C")])
      h2 = Deck::Hand.new([Deck::Card.new("5", "C"), Deck::Card.new("1", "C"), Deck::Card.new("6", "H"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])
      h3 = Deck::Hand.new([Deck::Card.new("2", "C"), Deck::Card.new("5", "H"), Deck::Card.new("4", "C"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])
      h4 = Deck::Hand.new([Deck::Card.new("5", "H"), Deck::Card.new("5", "S"), Deck::Card.new("3", "C"), Deck::Card.new("5", "C"), Deck::Card.new("5", "C")])
      poker.hands = [h1, h2, h3, h4]
      get 'index'
      expect(assigns(:poker).hands).to eq poker.hands
    end
  end
end