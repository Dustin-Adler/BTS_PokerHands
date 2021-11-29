import {
    RECEIVE_HANDS, 
    RECEIVE_HAND, 
    REMOVE_HAND
} from '../actions/hand_actions'

const handReducer = (state = {}, action) => {

    switch (action.type) {
        case RECEIVE_HANDS:
            return action.hands

        case RECEIVE_HAND:
            return {...state, [action.hand.id]: action.hand}
            
        case REMOVE_HAND:
            const newState = {...state}
            delete newState[action.id]
            return newState
            
        default:
            return state;
    }
}

export default handReducer;