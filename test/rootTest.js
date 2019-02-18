//apiTest.js
const request = require('supertest');
const app = require('../index');

//==================== user API test ====================

/**
 * Testing root endpoint
 */
describe('GET /', function () {
    it('responds with 200: "hello world"', function (done) {
        request(app)
            .get('/')
            .expect(200)
            .expect('hello world', done)
    });
});