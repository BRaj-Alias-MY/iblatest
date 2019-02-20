let jwt = require ('jsonwebtoken');
let config = require('./config/keys');
var menu_modules_master = require('./models').menu_modules_master;
var menu_access_map = require('./models').menu_access_map;
var menu_master = require('./models').menu_master;

exports.validate = (req, res, next) => {
	  if (!req.headers.authorization) {
			return res.status (401).send ({'status':false,'message':'No autherized.'});
	  }

	  let token = req.headers.authorization;
	  if (token === 'null') {
			return res.status(401).send ({'status':false,'message':'Un-autherized Access.'});
	  }
  
	jwt.verify(token,config.secret,(err,decoded)=>{
		if(err){
			return res.status(401).send({'status':false,'message':'In valid token.'});
		}else{
			req.auth = decoded;
			if(req.headers.referer){
				let presentMenu = req.headers.referer.split(req.headers.origin);
				//================= write menu access ===========================
				menu_master.findOne({include:[{model:menu_access_map,where:{roleId:decoded.role}}],where:{menuStatus:1,menuLink:presentMenu[1]}}).then(menuAccess=>{
					req.auth.access = menuAccess ? {
						addAccess: menuAccess.menu_access_maps[0].addAccess, 		
						editAccess: menuAccess.menu_access_maps[0].editAccess, 
						gridAccess: menuAccess.menu_access_maps[0].gridAccess, 
						viewAccess: menuAccess.menu_access_maps[0].viewAccess, 
						deleteAccess: menuAccess.menu_access_maps[0].deleteAccess} : {};
					next ();
				})
			}else{
				req.auth.access = {addAccess: '1', editAccess: '1', gridAccess: '1', viewAccess: '1', deleteAccess: '1'};
					next ();
			}
			//===============================================================
			
		}
	})
};