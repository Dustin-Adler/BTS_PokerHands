import React from 'react'

class PokerHand extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        const hand = this.props.hand
        return(
            <div>
                <p>
                    Hand Rank: {hand.rank} <br />
                    Cards: {hand.card1} {hand.card2} {hand.card3} {hand.card4} {hand.card5} <br />
                </p>
                <button onClick={() => this.props.deleteHand(hand.id)}>
                    Delete this hand
                </button>
                <br />
                <br />
            </div>
        )
    }
}

export default PokerHand