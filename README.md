# CTF Setup

This was a template for the Spearbit Rearguard team (or anyone else who finds it) to use for Paradigm CTF 2022.

I update it to match any CTF, you can found the template [here](https://github.com/m4k2/foundry-ctf-template).

## Set Up

- Create a .env file in the root directory with `RPC_URL` and `PRIVATE_KEY` (these will be used for submission scripts)
- Add your RPC url to the `foundry.toml` file (this will be used to fork for tests)

## Running Challenges

- Create a folder in /src with the contracts for the challenge.
- Copy the `Template.t.sol` file in /test and set it up for the challenge. Link in needed contracts (including mocks). It's already set up to fork the CTF network at the start of the test.
- Copy and Write exploit in the test (after `vm.createSelectFork(vm.rpcUrl("CTFnetwork"));`). Use cast commands in terminal or console.logs in the test to aid as needed. 
Run tests with this cmd : `forge test --match-path test/Template/Template.t.sol -vvv` adapting the test path.
- When the test succeeds, copy everything in a folder over to `script/challenge_name/Exploitoor.s.sol`, in between `startBroadcast()` and `stopBroadcast()`.
- Call `bash exploit.sh chall_test` with the folder name as argument to run the script on the Paradigm network with your private key.

# WriteUp

Compose your write-up in this section and share it. 