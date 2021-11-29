import * as HandAPIUtils from '../utils/hand_api_utils'

export const RECEIVE_HANDS = 'RECEIVE_HANDS'
export const RECEIVE_HAND = 'RECEIVE_HAND'
export const REMOVE_HAND = 'REMOVE_HAND'
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS'
export const CLEAR_ERRORS = 'CLEAR_ERRORS'

const receiveHands = (hands) => ({
    type: RECEIVE_HANDS, 
    hands
})

const receiveHand = (hand) => {
    return {
        type: RECEIVE_HAND, 
        hand
    }
}

const removeHand = (id) => ({
    type: REMOVE_HAND, 
    id,
})

const receiveErrors = (errors) => {
    return {
            type: RECEIVE_ERRORS, 
            errors
            }
}

export const clearErrors = () => ({
    type: CLEAR_ERRORS,
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
    return(
        HandAPIUtils.createHand(hand)
        .then(
            (recHand) => dispatch(receiveHand(recHand)), 
            error => dispatch(receiveErrors(error.responseText))
        )
    )
}

export const updateHand = (hand) => (dispatch) => (
    HandAPIUtils.updateHand(hand)
    .then( 
        (recHand) => dispatch(receiveHand(recHand)), 
        error => dispatch(receiveErrors(error.responseText))
    )
)

export const deleteHand = (id) => (dispatch) => (
    HandAPIUtils.deleteHand(id)
    .then( () => dispatch(removeHand(id)))
)