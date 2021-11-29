import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import * as HandActions from './actions/hand_actions'

document.addEventListener("DOMContentLoaded", () => {
    
    let store;
    let preloadedState = undefined

    store = configureStore(preloadedState);
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store}/>, root);

    window.store = store 
    window.HandActions = HandActions
    
})