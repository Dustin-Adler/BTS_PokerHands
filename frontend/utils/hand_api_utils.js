export const getHands = () => (
    $.ajax({
        url: `api/hands`,
        method: 'get'
    })
)

export const getHand = (id) => (
    $.ajax({
        url: `api/hands/${id}`,
        method: 'get'
    })
)

export const createHand = (hand) => (
    $.ajax({
        url: `api/hands`,
        method: 'post', 
        data:{hand}
    })
)

export const updateHand = (hand) => (
    $.ajax({
        url: `api/hands/${hand.id}`,
        method: 'post', 
        data:{hand}
    })
)

export const deleteHand = (id) => (
    $.ajax({
        url: `api/hands/${id}`,
        method: 'post', 
        data:{hand}
    })
)