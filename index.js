let express = require('express');
let bodyparser = require('body-parser');
let cors = require('cors');
let jwt = require('jsonwebtoken');
let http = require ('http');
//============ Create Express app and initialize to app variable ========
let app = express();
// ============= initialize cros ==============
app.use(cors());
//=========== set port ================
app.set('port',process.env.port || 3000 );
//========= initialize body parser ==========
app.use(bodyparser.json());
//=========== Start Code Here ====================
app.get('/',(req,res)=>{
    res.send({'status':true,'msg':'Server Started.'});
});
//=========== routes ==============
app.use('/api',require('./api'));
//=================================
app.get('*',(req,res)=>{
    res.status(404).send({'status':false,'msg':'Page Not found.'});
});
//============== Code Ends Here ===================
//====== Start Server ===================
let server = http.createServer(app);
server.listen (app.get('port'));