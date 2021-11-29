import * as HandAPIUtils from '../utils/hand_api_utils'

export const RECEIVE_HANDS = 'RECEIVE_HANDS'
export const RECEIVE_HAND = 'RECEIVE_HAND'
export const REMOVE_HAND = 'REMOVE_HAND'

const receiveHands = (hands) => ({
    type: RECEIVE_HANDS, 
    hands
})

const receiveHand = (hand) => {
    // debugger
    return {
        type: RECEIVE_HAND, 
        hand
    }
}

const removeHand = (id) => ({
    type: REMOVE_HAND, 
    id,
})

export const getHands = () => (dispatch) => (
    HandAPIUtils.getHands()
    .then( recHands => dispatch(receiveHands(recHands)))
)

export const getHand = (id) => (dispatch) => (
    HandAPIUtils.getHands(id)
    .then( recHand => dispatch(receiveHand(recHand)))
)

export const createHand = (hand) => (dispatch) => {
    // debugger
    return(
        HandAPIUtils.createHand(hand)
        .then((recHand) => dispatch(receiveHand(recHand)))
    )
}

export const updateHand = (hand) => (dispatch) => (
    HandAPIUtils.updateHand(hand)
    .then( recHand => dispatch(receiveHand(recHand)))
)

export const deleteHand = (id) => (dispatch) => (
    HandAPIUtils.deleteHand(id)
    .then( () => dispatch(removeHand(id)))
)