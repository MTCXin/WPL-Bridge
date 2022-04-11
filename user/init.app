module user/init

var test1 : User :=
	User {
		username := "test1"
		email    := "test1@test.com"
		password := "testtest"
		convention := " 2/1 game forcing (Two-over-one game forcing) is a bidding system in modern contract bridge structured around the following responses to a one-level opening bid: a non-jump response in a new suit at the one-level is constructive and forcing for one round, a non-jump response in a new suit at the two-level is forcing to game, and a 1NT response to a major opening is forcing for one round and indicates insufficient values to immediately commit to game or bid a suit at the one-level."
		isManager  := true
	}
	
	var test2 : User :=
  User {
    username := "test2"
    email    := "test2@test.com"
    password := "testtest"
    convention := "Bridge World Standard (BWS) is a bidding system in the card game contract bridge, first developed and serially published in 1967-69[1] as BWS 1968[2] by The Bridge World magazine. Like the Standard American Yellow Card (SAYC), it was intended for use by impromptu or casual partnerships and as a basis for discussion by those who wish to formulate their own system."
    isManager  := false
  }
