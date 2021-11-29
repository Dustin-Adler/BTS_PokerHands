import { combineReducers } from 'redux';
import handReducer from './hand_reducer';
import errorsReducer from './error_reducer';

const rootReducer = combineReducers({
    hands: handReducer, 
    errors: errorsReducer,
})

export default rootReducer;