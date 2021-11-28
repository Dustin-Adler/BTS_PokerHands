import {
    RECEIVE_HANDS, 
    RECEIVE_HAND, 
    REMOVE_HAND
} from '../actions/hand_actions'

const handReducer = (state = {}, action) => {
    switch (action.type) {
        case RECEIVE_HANDS:
            return action.cartItems

        case RECEIVE_HAND:
            return {...state, [action.cartItem.id]: action.cartItem}

        case REMOVE_HAND:
            const newState = {...state}
            delete newState[action.id]
            return newState
            
        default:
            return state;
    }
}

export default handReducer;