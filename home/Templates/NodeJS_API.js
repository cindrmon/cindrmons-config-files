// import packages
const express = require("express")
const cors = require("cors")
 
// initialise expressjs
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(cors());
 
// server port setup
const PORT = process.env.PORT || 8902;
app.listen(PORT, () => {
    console.log(`Server Started on Port ${PORT}`)
    console.log("Press Ctrl+C to Stop Server")
})
 
// <INSERT CODE FROM BEYOND THIS POINT>
