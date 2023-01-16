const express = require('express')
const app = express()

app.get('/pointsOfInterest', (request, response) => {

    const model = {
        title: "Points of interests",
        items: [
            {
                title: "Boston",
                description: "The Bruins",
                hero_image_url: "https://picsum.photos/seed/boston/300/200",
                action: {
                    display_method: "full_screen",
                    route: 'details'
                }
            },
            {
                title: "Chicago",
                description: "The Blackhawks",
                hero_image_url: "https://picsum.photos/seed/chicago/300/200",
                action: {
                    display_method: "push",
                    route: 'details'
                }
            },
            {
                title: "Detroit",
                description: "The Red Wings",
                hero_image_url: "https://picsum.photos/seed/detroit/300/200",
                action: {
                    display_method: "sheet",
                    route: 'details'
                }
            },
            {
                title: "Montreal",
                description: "The Canadiens",
                hero_image_url: "https://picsum.photos/seed/montreal/300/200",
                action: {
                    display_method: "full_screen",
                    route: 'details'
                }
            },
            {
                title: "New York",
                description: "The Rangers",
                hero_image_url: "https://picsum.photos/seed/newyork/300/200",
                action: {
                    display_method: "push",
                    route: 'details'
                }
            },
            {
                title: "Toronto",
                description: "The Maple Leafs",
                hero_image_url: "https://picsum.photos/seed/toronto/300/200",
                action: {
                    display_method: "sheet",
                    route: 'details'
                }
            },
        ]
    }

    response.json(model)
})

app.listen(3000, () => {
    console.log("server is running")
})
