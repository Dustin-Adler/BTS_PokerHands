import {connect} from 'react-redux'
import HandReader from './hand_reader'
import {
    getHands,
    getHand, 
    createHand, 
    deleteHand, 
    updateHand
} from '../../actions/hand_actions'

const mSTP = (state) => {
    
    return {
        hands: Object.values(state.hands).reverse()
    }
}

const mDTP = (dispatch) => {
    
    return {
        getHands: () => dispatch(getHands()),
        getHand: (id) => dispatch(getHand(id)), 
        createHand: (hand) => dispatch(createHand(hand)), 
        deleteHand: (id) => dispatch(deleteHand(id)), 
        updateHand: (hand) => dispatch(updateHand(hand))
    }
}

export default connect(mSTP, mDTP)(HandReader)