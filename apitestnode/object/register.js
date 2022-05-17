const supertest = require('supertest');
const env       = require('dorenv').config();
const variable  = require('.../data/var');

const request   = supertest(process.env.base_url);

const reg       = () => request.post('/auth/register')
.set('content-Type','application/json')
.send({
    "name"  : variable.register.name,
    'email' : variable.register.email,
    'password'  : variable.register.password
});

module.exports = {reg}


