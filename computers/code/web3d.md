# Future of UX on the web

- Desktops
- Laptops
- Phones
- Tablets
- AR
- VR
- Motion tracking

There is way to make a unified user experience that works with all of these devices.

The DOM approach has shaped the way we design UX for the web. Everything has become a collection of menus. There is no tactility to it that makes it memorable. Mobile apps have also significantly influenced this, where we are now in a homogenized sort of DOM + Mobile era.

CRUD, RESTful API, all of this is a product of its own age. We want to build for a new age, a better age.

Browser -> DOM -> Framework -> State Management -> API -> Server -> Database

I want to recreate the feeling of 2000s era UX design found in gaming consoles. Ex, Wii, PS2, Xbox, DS. This was lost to time as the iPhone released in 2007 and changed everything. These user interfaces had real physics and movement to them, there was a tactile and responsive feeling. The 3D space was meaningful compared to the flat material design of today. We can bring back the skeuomorphism that has been forgotten.

### Required technology
- Server that serves an HTML canvas
- Javascript to bridge all possible user inputs on the canvas to the app.
- WASM 3D game engine style UX
- Websockets to pass messages, app <-> server <-> db (if needed)

Browser <--> DOM/Input (JavaScript) <--> WASM Client (Rust) <--WebSocket--> Server (Go) <--> Database

