This project has both the front-end and back end working in sync to give us a fully functional application.

# Front-end
The front-end /client side is created or built using react framework under the larger vite framework.
The link to the front-end repository is ~ https://github.com/AmazyJoe/code-challenge-phase-3-1/tree/main/front/src. You can clone it using the ssh key and also to start the app you run the vite command ~npx vite dev~.
That is all about our front-end.

# Back-end
The project is set up on ruby version 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux].
To use this project you can clone it by retrieving the ssh key from the code section of the repository.
To run the development server, use ~rake server~

This is created using ruby's sinatra and active records. This is literally our API from which we do a fetch/axios request and attach the server link running in the back end to the front-end for fetching purposes to the user.
Our back-end has 3 models,and the way these models relate is described in the table below.
https://dbdiagram.io/d/63fd860e296d97641d843231.
We then do migrations using rake ~ db:migrate~ and later on use ~rake db:seed~ to populate our database using the faker gem.

The server on the backend runs on port 9292 of the local host, we then link this to the front-end components as we specify the exact routes we want to fetch from. 

