import { combineReducers } from 'redux';
import handReducer from './hand_reducer';

const rootReducer = combineReducers({
    hands: handReducer
})

export default rootReducer;