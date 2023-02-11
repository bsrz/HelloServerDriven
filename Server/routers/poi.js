const express = require("express");
const router = express.Router();

router.get("/", (request, response) => {
  const model = {
    description: "A list of all TripAdvisor offices in the Americas",
    offices: [
      {
        id: "1",
        name: "Needham, MA",
        location: {
          city: "Needham",
          state: "MA",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/Needham/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "1",
            },
          },
        },
      },
      {
        id: "2",
        name: "New York, NY",
        location: {
          city: "New York",
          state: "NY",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/NewYork/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "2",
            },
          },
        },
      },
      {
        id: "3",
        name: "Ewing, NJ",
        location: {
          city: "Ewing",
          state: "NJ",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/Ewing/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "3",
            },
          },
        },
      },
      {
        id: "4",
        name: "El Segundo, CA",
        location: {
          city: "El Segundo",
          state: "CA",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/ElSegundo/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "4",
            },
          },
        },
      },
      {
        id: "5",
        name: "Las Vegas, NV",
        location: {
          city: "Las Vegas",
          state: "NV",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/LasVegas/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "5",
            },
          },
        },
      },
      {
        id: "6",
        name: "Sao Paulo, BR",
        location: {
          city: "Sao Paulo",
          state: "BR",
          country: "USA",
        },
        image_url: "https://picsum.photos/seed/SaoPaulo/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "6",
            },
          },
        },
      },
      {
        id: "7",
        name: "Ottawa, CAN",
        location: {
          city: "Ottawa",
          state: "ON",
          country: "CAN",
        },
        image_url: "https://picsum.photos/seed/Ottawa/300/200",
        action: {
          route: {
            name: "details",
            payload: {
              id: "7",
            },
          },
        },
      },
    ],
  };

  console.log("/poi" + request.path);

  response.status(200).json(model);
});

router.get("/:id", (request, response) => {
  console.log("/poi" + request.path);

  switch (request.params.id) {
    case "1":
      response.status(200).json({
        id: "1",
        name: "Needham, MA",
        image_url: "https://picsum.photos/seed/Needham/300/200",
        location: {
          city: "Needham",
          state: "MA",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/1Needhamsection11/150/400",
            "https://picsum.photos/seed/1Needhamsection12/150/200",
            "https://picsum.photos/seed/1Needhamsection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/1Needhamsection21/150/200",
            "https://picsum.photos/seed/1Needhamsection22/150/100",
            "https://picsum.photos/seed/1Needhamsection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/1Needhamsection31/150/400",
            "https://picsum.photos/seed/1Needhamsection32/150/200",
            "https://picsum.photos/seed/1Needhamsection33/150/200",
          ],
        },
      });
      break;
    case "2":
      response.status(200).json({
        id: "2",
        name: "New York, NY",
        image_url: "https://picsum.photos/seed/NewYork/300/200",
        location: {
          city: "New York",
          state: "NY",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/2NewYorksec1tion1/150/400",
            "https://picsum.photos/seed/2NewYorksection12/150/200",
            "https://picsum.photos/seed/2NewYorksection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/2NewYorksection21/150/200",
            "https://picsum.photos/seed/2NewYorksection22/150/100",
            "https://picsum.photos/seed/2NewYorksection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/2NewYorksection31/150/400",
            "https://picsum.photos/seed/2NewYorksection32/150/200",
            "https://picsum.photos/seed/2NewYorksection33/150/200",
          ],
        },
      });
      break;
    case "3":
      response.status(200).json({
        id: "3",
        name: "Ewing, NJ",
        image_url: "https://picsum.photos/seed/Ewing/300/200",
        location: {
          city: "Ewing",
          state: "NJ",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/3Ewingsection11/150/400",
            "https://picsum.photos/seed/3Ewingsection12/150/200",
            "https://picsum.photos/seed/3Ewingsection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/3Ewingsection21/150/200",
            "https://picsum.photos/seed/3Ewingsection22/150/100",
            "https://picsum.photos/seed/3Ewingsection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/3Ewingsection31/150/400",
            "https://picsum.photos/seed/3Ewingsection32/150/200",
            "https://picsum.photos/seed/3Ewingsection33/150/200",
          ],
        },
      });
      break;
    case "4":
      response.status(200).json({
        id: "4",
        name: "El Segundo, CA",
        image_url: "https://picsum.photos/seed/ElSegundo/300/200",
        location: {
          city: "El Segundo",
          state: "CA",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/4ElSegundosec1tion1/150/400",
            "https://picsum.photos/seed/4ElSegundosection12/150/200",
            "https://picsum.photos/seed/4ElSegundosection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/4ElSegundosection21/150/200",
            "https://picsum.photos/seed/4ElSegundosection22/150/100",
            "https://picsum.photos/seed/4ElSegundosection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/4ElSegundosection31/150/400",
            "https://picsum.photos/seed/4ElSegundosection32/150/200",
            "https://picsum.photos/seed/4ElSegundosection33/150/200",
          ],
        },
      });
      break;
    case "5":
      response.status(200).json({
        id: "5",
        name: "Las Vegas, NV",
        image_url: "https://picsum.photos/seed/LasVegas/300/200",
        location: {
          city: "Las Vegas",
          state: "NV",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/5LasVegassec1tion1/150/400",
            "https://picsum.photos/seed/5LasVegassection12/150/200",
            "https://picsum.photos/seed/5LasVegassection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/5LasVegassection21/150/200",
            "https://picsum.photos/seed/5LasVegassection22/150/100",
            "https://picsum.photos/seed/5LasVegassection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/5LasVegassection31/150/400",
            "https://picsum.photos/seed/5LasVegassection32/150/200",
            "https://picsum.photos/seed/5LasVegassection33/150/200",
          ],
        },
      });
      break;
    case "6":
      response.status(200).json({
        id: "6",
        name: "Sao Paulo, BR",
        image_url: "https://picsum.photos/seed/SaoPaulo/300/200",
        location: {
          city: "Sao Paulo",
          state: "BR",
          country: "USA",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/6SaoPaulosec1tion1/150/400",
            "https://picsum.photos/seed/6SaoPaulosection12/150/200",
            "https://picsum.photos/seed/6SaoPaulosection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/6SaoPaulosection21/150/200",
            "https://picsum.photos/seed/6SaoPaulosection22/150/100",
            "https://picsum.photos/seed/6SaoPaulosection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/6SaoPaulosection31/150/400",
            "https://picsum.photos/seed/6SaoPaulosection32/150/200",
            "https://picsum.photos/seed/6SaoPaulosection33/150/200",
          ],
        },
      });
      break;
    case "7":
      response.status(200).json({
        id: "7",
        name: "Ottawa, CAN",
        image_url: "https://picsum.photos/seed/Ottawa/300/200",
        location: {
          city: "Ottawa",
          state: "ON",
          country: "CAN",
        },
        description: "lorem ipsum",
        gallery: {
          section1: [
            "https://picsum.photos/seed/7Ottawasection11/150/400",
            "https://picsum.photos/seed/7Ottawasection12/150/200",
            "https://picsum.photos/seed/7Ottawasection13/150/200",
          ],
          section2: [
            "https://picsum.photos/seed/7Ottawasection21/150/200",
            "https://picsum.photos/seed/7Ottawasection22/150/100",
            "https://picsum.photos/seed/7Ottawasection23/150/100",
          ],
          section3: [
            "https://picsum.photos/seed/7Ottawasection31/150/400",
            "https://picsum.photos/seed/7Ottawasection32/150/200",
            "https://picsum.photos/seed/7Ottawasection33/150/200",
          ],
        },
      });
      break;

    default:
      response.sendStatus(404);
  }
});

module.exports = router;
