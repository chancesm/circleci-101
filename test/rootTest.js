//apiTest.js
const request = require('supertest');
const app = require('../app');

//==================== user API test ====================

/**
 * Testing get all user endpoint
 */
describe('GET /', function () {
    it('responds', function (done) {
        request(app)
            .get('/')
            .expect(200, done);
    });
});
