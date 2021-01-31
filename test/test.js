const truffleAssert = require('truffle-assertions');
const { expect, assert } = require('chai');
const bigNumber = require('bignumber.js');
const {
  constants,
  randomNumber,
  randomAddress,
  web3
} = require('../../../../utils/test');

describe('Testset', () => {


  before(async() => {
    [
      addr.sender,
      addr.owner,
      addr.arbitrary,
      addr.arbitrary2,
      addr.arbitrary3,
      addr.arbitrary4,
    ] = await web3.eth.getAccounts();
  });


  describe('Sub-testset', () => {
    it(`test`, async () => {
        expect(true, "message");
    });

  });
});
