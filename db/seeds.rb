# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cards.delete_all
Ranks.delete_all

ace_of_clubs = Cards.create({ name: 'AC' })
king_of_clubs = Cards.create({ name: 'KC' })
queen_of_clubs = Cards.create({ name: 'QC' })
jack_of_clubs = Cards.create({ name: 'JC' })
ten_of_clubs = Cards.create({ name: '10C' })
nine_of_clubs = Cards.create({ name: '9C' })
eight_of_clubs = Cards.create({ name: '8C' })
seven_of_clubs = Cards.create({ name: '7C' })
six_of_clubs = Cards.create({ name: '6C' })
five_of_clubs = Cards.create({ name: '5C' })
four_of_clubs = Cards.create({ name: '4C' })
three_of_clubs = Cards.create({ name: '3C' })
two_of_clubs = Cards.create({ name: '2C' })

ace_of_diamonds = Cards.create({ name: 'AD' })
king_of_diamonds = Cards.create({ name: 'KD' })
queen_of_diamonds = Cards.create({ name: 'QD' })
jack_of_diamonds = Cards.create({ name: 'JD' })
ten_of_diamonds = Cards.create({ name: '10D' })
nine_of_diamonds = Cards.create({ name: '9D' })
eight_of_diamonds = Cards.create({ name: '8D' })
seven_of_diamonds = Cards.create({ name: '7D' })
six_of_diamonds = Cards.create({ name: '6D' })
five_of_diamonds = Cards.create({ name: '5D' })
four_of_diamonds = Cards.create({ name: '4D' })
three_of_diamonds = Cards.create({ name: '3D' })
two_of_diamonds = Cards.create({ name: '2D' })

ace_of_hearts = Cards.create({ name: 'AH' })
king_of_hearts = Cards.create({ name: 'KH' })
queen_of_hearts = Cards.create({ name: 'QH' })
jack_of_hearts = Cards.create({ name: 'JH' })
ten_of_hearts = Cards.create({ name: '10H' })
nine_of_hearts = Cards.create({ name: '9H' })
eight_of_hearts = Cards.create({ name: '8H' })
seven_of_hearts = Cards.create({ name: '7H' })
six_of_hearts = Cards.create({ name: '6H' })
five_of_hearts = Cards.create({ name: '5H' })
four_of_hearts = Cards.create({ name: '4H' })
three_of_hearts = Cards.create({ name: '3H' })
two_of_hearts = Cards.create({ name: '2H' })

ace_of_spades = Cards.create({ name: 'AS' })
king_of_spades = Cards.create({ name: 'KS' })
queen_of_spades = Cards.create({ name: 'QS' })
jack_of_spades = Cards.create({ name: 'JS' })
ten_of_spades = Cards.create({ name: '10S' })
nine_of_spades = Cards.create({ name: '9S' })
eight_of_spades = Cards.create({ name: '8S' })
seven_of_spades = Cards.create({ name: '7S' })
six_of_spades = Cards.create({ name: '6S' })
five_of_spades = Cards.create({ name: '5S' })
four_of_spades = Cards.create({ name: '4S' })
three_of_spades = Cards.create({ name: '3S' })
two_of_spades = Cards.create({ name: '2S' })

straight_flush = Ranks.create({
                                hand_name: 'Straight Flush',
                                rank: 1
                              })

four_of_a_kind = Ranks.create({
                                hand_name: 'Four of a Kind',
                                rank: 2
                              })

full_house = Ranks.create({
                            hand_name: 'Full House',
                            rank: 3
                          })

flush = Ranks.create({
                       hand_name: 'Flush',
                       rank: 4
                     })

straight = Ranks.create({
                          hand_name: 'Straight',
                          rank: 5
                        })

three_of_a_kind = Ranks.create({
                                 hand_name: 'Three of a Kind',
                                 rank: 6
                               })

two_pair = Ranks.create({
                          hand_name: 'Two Pair',
                          rank: 7
                        })

pair = Ranks.create({
                      hand_name: 'Pair',
                      rank: 8
                    })

high_card = Ranks.create({
                           hand_name: 'High Card',
                           rank: 9
                         })
