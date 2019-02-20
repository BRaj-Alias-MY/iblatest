let app = require('express');
let publicRoute = require('./controllers/publicController');
let user = require('./controllers/userController');
let organization = require('./controllers/organizationController');
let question = require('./controllers/questionController');
let domain = require('./controllers/domainController');
let explevel = require('./controllers/expertLevelController');
let usergroup = require('./controllers/usergroupsController');
let reportparam = require('./controllers/reportparametersController');
let interviewtype = require('./controllers/interviewtypeController');
let userprofile = require('./controllers/userprofileController');
let coupons = require('./controllers/couponsController');
let payments = require('./controllers/paymentsController');
let interview = require("./controllers/interview/interviewController");
let expertReview = require('./controllers/interview/expertReviewController');
let dashboard = require('./controllers/dashboardsController');

const AsyncTest = require ('./controllers/interview/asynctest.controller');
const Async = require ('./controllers/interview/asyncinterview.controller');
const AsyncMock = require ('./controllers/interview/asyncmock.controller');

let router = app.Router();

let auth = require ('./middleware').validate;

router.use('/public',publicRoute);
router.use('/user',auth,user);
router.use('/organization',auth,organization);
router.use('/questions',auth,question);
router.use('/domain',auth,domain);
router.use('/usergroup',auth,usergroup);
router.use('/exp-level',auth,explevel);
router.use('/reportparam',auth,reportparam);
router.use('/interviewtype',auth,interviewtype);
router.use('/userprofile', auth,userprofile);
router.use('/coupons', auth,coupons);
router.use('/payments',auth,payments);
router.use('/interview',auth,interview);
router.use('/expert-review',auth,expertReview);
router.use('/dashboard',auth,dashboard);



module.exports = app  => {
      app.get ('/api/asynctest/:InterviewId/:userId/:status', AsyncTest.findOne);
      app.post ('/api/update2', AsyncTest.UpdateRecord);
      app.get ('/api/async/:email/:domain/:subdomain', Async.findAll);
      app.get ('/api/verifypin/:pin', Async.VerifyPin);
      app.post ('/api/updatepin/', Async.UpdatePin);
      app.get ('/api/asyncmock/:InterviewId', AsyncMock.asyncmock);
      app.get ('/api/getinterviews/:status/:email/', Async.findAInterviews);
      app.get ('/api/getvideos/:email/:InterviewId', AsyncTest.getVideos);
    };

module.exports = router;