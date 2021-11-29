import { RECEIVE_ERRORS, CLEAR_ERRORS, RECEIVE_HAND} from '../actions/hand_actions'

const errorsReducer = (state=[], action) => {
    Object.freeze(state)
    switch (action.type) {
        case RECEIVE_ERRORS:
            debugger
            return action.errors;
        case CLEAR_ERRORS:
            return [];
        case RECEIVE_HAND:
            return [];
        default:
            return state;
    }
}

export default errorsReducer;