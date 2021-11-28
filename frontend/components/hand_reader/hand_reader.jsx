import React from 'react'

class HandReader extends React.Component {
    constructor(props){
        super(props)

        this.state = {
            hand: ''
        }
    }

    render(){
        return(
            <div className='layout'>
                <h1>Poker Hand Checker</h1>
                <form
                    className='hand-form' 
                    onSubmit={() => this.props.createHand(this.state.hand)}>
                    <label>Enter your desired poker hand here<br />
                        <input 
                            type="text"
                            onChange={(e) => this.setState({
                                hand: e.target
                            })}/>
                    </label>
                    <div className='errors'>Errors with entered hand</div>
                    <h3>Cards and Rank of most recent hand</h3>
                    <div></div>
                    <p className='instructions'>
                        Please enter your hand as a space seperated list. <br />
                        For each desired card write the number of the card followed by the first letter in the name of the desired suit. <br />
                        For named cards, please use the first letter of the named card. <br />
                        Example Input: 2H 2D 2C KC QD 
                    </p>
                    <button>Check Hand</button>
                </form>

                <div className='hand-history'>
                    <h3>Hand History</h3>

                </div>
            </div>
        )
    }
}

export default HandReader;