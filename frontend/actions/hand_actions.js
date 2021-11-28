import * as HandAPIUtils from '../utils/hand_api_utils'

export const RECEIVE_HANDS = 'RECEIVE_HANDS'
export const RECEIVE_HAND = 'RECEIVE_HAND'
export const REMOVE_HAND = 'REMOVE_HAND'

const receiveHands = (hands) => ({
    type: RECEIVE_HANDS, 
    hands
})

const receiveHand = (hand) => ({
    type: RECEIVE_HAND, 
    hand
})

const removeHand = (id) => ({
    type: REMOVE_HAND, 
    id,
})

export const getHands = () => (dispatch) => (
    HandAPIUtils.receiveHands()
    .then( recHands => dispatch(receiveHands(recHands)))
)

export const getHand = (id) => (dispatch) => (
    HandAPIUtils.receiveHand(id)
    .then( recHand => dispatch(receiveHand(recHand)))
)

export const createHand = (hand) => (dispatch) => (
    HandAPIUtils.createHand(hand)
    .then( recHand => dispatch(receiveHand(recHand)))
)

export const updateHand = (hand) => (dispatch) => (
    HandAPIUtils.createHand(hand)
    .then( recHand => dispatch(receiveHand(recHand)))
)

export const deleteHand = (id) => (dispatch) => (
    HandAPIUtils.deleteHand(id)
    .then( () => dispatch(removeHand(id)))
)