# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.delete_all
Rank.delete_all
Hand.delete_all

#club cards
ace_of_clubs = Card.create({ name: 'AC' })
king_of_clubs = Card.create({ name: 'KC' })
queen_of_clubs = Card.create({ name: 'QC' })
jack_of_clubs = Card.create({ name: 'JC' })
ten_of_clubs = Card.create({ name: '10C' })
nine_of_clubs = Card.create({ name: '9C' })
eight_of_clubs = Card.create({ name: '8C' })
seven_of_clubs = Card.create({ name: '7C' })
six_of_clubs = Card.create({ name: '6C' })
five_of_clubs = Card.create({ name: '5C' })
four_of_clubs = Card.create({ name: '4C' })
three_of_clubs = Card.create({ name: '3C' })
two_of_clubs = Card.create({ name: '2C' })

#diamond cards
ace_of_diamonds = Card.create({ name: 'AD' })
king_of_diamonds = Card.create({ name: 'KD' })
queen_of_diamonds = Card.create({ name: 'QD' })
jack_of_diamonds = Card.create({ name: 'JD' })
ten_of_diamonds = Card.create({ name: '10D' })
nine_of_diamonds = Card.create({ name: '9D' })
eight_of_diamonds = Card.create({ name: '8D' })
seven_of_diamonds = Card.create({ name: '7D' })
six_of_diamonds = Card.create({ name: '6D' })
five_of_diamonds = Card.create({ name: '5D' })
four_of_diamonds = Card.create({ name: '4D' })
three_of_diamonds = Card.create({ name: '3D' })
two_of_diamonds = Card.create({ name: '2D' })

#heart cards
ace_of_hearts = Card.create({ name: 'AH' })
king_of_hearts = Card.create({ name: 'KH' })
queen_of_hearts = Card.create({ name: 'QH' })
jack_of_hearts = Card.create({ name: 'JH' })
ten_of_hearts = Card.create({ name: '10H' })
nine_of_hearts = Card.create({ name: '9H' })
eight_of_hearts = Card.create({ name: '8H' })
seven_of_hearts = Card.create({ name: '7H' })
six_of_hearts = Card.create({ name: '6H' })
five_of_hearts = Card.create({ name: '5H' })
four_of_hearts = Card.create({ name: '4H' })
three_of_hearts = Card.create({ name: '3H' })
two_of_hearts = Card.create({ name: '2H' })

#spade cards
ace_of_spades = Card.create({ name: 'AS' })
king_of_spades = Card.create({ name: 'KS' })
queen_of_spades = Card.create({ name: 'QS' })
jack_of_spades = Card.create({ name: 'JS' })
ten_of_spades = Card.create({ name: '10S' })
nine_of_spades = Card.create({ name: '9S' })
eight_of_spades = Card.create({ name: '8S' })
seven_of_spades = Card.create({ name: '7S' })
six_of_spades = Card.create({ name: '6S' })
five_of_spades = Card.create({ name: '5S' })
four_of_spades = Card.create({ name: '4S' })
three_of_spades = Card.create({ name: '3S' })
two_of_spades = Card.create({ name: '2S' })

#hand ranks
straight_flush = Rank.create({ hand_name: 'Straight Flush'})
four_of_a_kind = Rank.create({ hand_name: 'Four of a Kind'})
full_house = Rank.create({hand_name: 'Full House'})
flush = Rank.create({ hand_name: 'Flush'})
straight = Rank.create({ hand_name: 'Straight'})
three_of_a_kind = Rank.create({hand_name: 'Three of a Kind'})
two_pair = Rank.create({hand_name: 'Two Pair'})
pair = Rank.create({hand_name: 'Pair'})
high_card = Rank.create({ hand_name: 'High Card'})

#some hands to get started
hand1 = Hand.create({card1: '2D', card2: '3D', card3: '4D', card4: '5D', card5: '6D'})
hand2 = Hand.create({card1: '5H', card2: '3H', card3: '2H', card4: '6H', card5: '7H'})
hand3 = Hand.create({card1: '2D', card2: '2C', card3: '2H', card4: '5D', card5: '5S'})
hand4 = Hand.create({card1: '10D', card2: 'JD', card3: 'QD', card4: 'KD', card5: 'AD'})
hand5 = Hand.create({card1: 'QC', card2: 'QD', card3: 'QH', card4: 'AD', card5: 'AH'})
hand6 = Hand.create({card1: 'JH', card2: 'JS', card3: '6D', card4: '6H', card5: 'AS'})
hand7 = Hand.create({card1: '2H', card2: '2D', card3: '4H', card4: '5H', card5: '6H'})
hand8 = Hand.create({card1: 'AS', card2: '7H', card3: '4H', card4: 'QD', card5: '2C'})