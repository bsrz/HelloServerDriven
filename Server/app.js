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
                    route: {
                        name: 'string',
                        payload: {
                            string: "Yellow and black"
                        }
                    }
                }
            },
            {
                title: "Chicago",
                description: "The Blackhawks",
                hero_image_url: "https://picsum.photos/seed/chicago/300/200",
                action: {
                    display_method: "push",
                    route: {
                        name: 'int',
                        payload: {
                            int: 24
                        }
                    }
                }
            },
            {
                title: "Detroit",
                description: "The Red Wings",
                hero_image_url: "https://picsum.photos/seed/detroit/300/200",
                action: {
                    display_method: "sheet",
                    route: {
                        name: 'no_payload'
                    }
                }
            },
            {
                title: "Montreal",
                description: "The Canadiens",
                hero_image_url: "https://picsum.photos/seed/montreal/300/200",
                action: {
                    display_method: "full_screen",
                    route: {
                        name: 'string',
                        payload: {
                            string: "La sainte flanelle"
                        }
                    }
                }
            },
            {
                title: "New York",
                description: "The Rangers",
                hero_image_url: "https://picsum.photos/seed/newyork/300/200",
                action: {
                    display_method: "push",
                    route: {
                        name: 'int',
                        payload: {
                            int: 1337
                        }
                    }
                }
            },
            {
                title: "Toronto",
                description: "The Maple Leafs",
                hero_image_url: "https://picsum.photos/seed/toronto/300/200",
                action: {
                    display_method: "sheet",
                    route: {
                        name: 'string',
                        payload: {
                            string: "Haven't won anything since '67"
                        }
                    }
                }
            },
            {
                title: "Gatineau",
                description: "The Olympics",
                hero_image_url: "https://picsum.photos/seed/gatineau/300/200",
                action: {
                    display_method: "full_screen",
                    route: {
                        name: 'int',
                        payload: {
                            int: 42
                        }
                    }
                }
            },
        ]
    }

    response.json(model)
})

app.listen(3000, () => {
    console.log("server is running")
})
