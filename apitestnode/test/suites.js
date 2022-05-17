const assert    = require('chai').expect;
const registers = require('../object/register');
const TCreg     = require('../testcase/register.json');

describe('API Testing', () => {
    describe('Register', () => {
        it('Test A', async() => {
            const res = await registers.reg();
            assert(res.status).to.equal(200)
        });
    });
});