import React from 'react'
import PokerHand from './poker_hand';

class HandReader extends React.Component {
    constructor(props){
        super(props)

        this.state = {
            hand: ''
        }
        
        this.handleSubmit = this.handleSubmit.bind(this);
        // this.handleUpdate = this.handleUpdate.bind(this)
    }

    componentDidMount(){
        this.props.getHands()
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.createHand(this.state)
        .then(() => this.setState({
            hand: ''
        }))
    }

    handleUpdate(id){
        // e.preventDefault();
        this.props.updateHand({
            hand: this.state.hand, 
            id: id
        })
        .then(() => this.setState({
            hand: ''
        }))
    }

    render(){

        if (!this.props.hands.length){
            return null
        }
        const hand = this.props.hands[0]
        // debugger
        const handHistory = this.props.hands.map((hand, id) => 
            <PokerHand 
                key={id} 
                hand={hand} 
                deleteHand={this.props.deleteHand}/>
        )

        return(
            <div className='layout'>
                <h1>Poker Hand Checker</h1>
                <form
                    className='hand-form' >
                    <label>Enter your desired poker hand here<br />
                        <input 
                            type="text"
                            onChange={(e) => this.setState({
                                hand: e.target.value
                            })}/>
                    </label>
                    <div className='errors'>Errors with entered hand</div>
                    <button onClick={() => this.handleUpdate(hand.id)}>Update Last Hand</button>
                    <button onClick={this.handleSubmit}>Create New Hand</button>
                    <h2>
                        Hand Rank: {hand.rank} <br />
                        Cards: {hand.card1} {hand.card2} {hand.card3} {hand.card4} {hand.card5} <br />
                    </h2>
                    
                    <p className='instructions'>
                        Please enter your hand as a space seperated list. <br />
                        For each desired card write the number of the card followed by the first letter in the name of the desired suit. <br />
                        For named cards, please use the first letter of the named card. <br />
                        Example Input: 2H 2D 2C KC QD 
                    </p>
                    
                </form>

                <div className='hand-history'>
                    <h3>Check out the other hands you've entered below.</h3>
                    <div>{handHistory}</div>
                </div>
            </div>
        )
    }
}

export default HandReader;