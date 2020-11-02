# evotingproject

# How the EPFL e-voting system works
Running an election seems simple, doesn't it? Get some paper ballots, mark them, put them into a ballot box, and then count them.

Running an electronic election seems simple as well: make electronic ballots, put them in an electronic ballot box and count them, right?

But for voters to have confidence in the outcome of an election, they need to be able to see what's going on. That's why in modern democratic 
elections there are specific protocols for how ballot papers are handled, how ballot boxes are opened, and who is present when they are counted.

If we want voters using an e-voting system to have the same confidence they have in physical voting systems, we need to solve those same problems:

Providing transparency that the votes were recorded and counted correctly
Protecting the privacy of the voter
Distribute the responsibility for correctly opening and counting the ballots
# Transparency and distributed trust
In a traditional voting system implemented with a simple database in a central server, the first problem we see is that voters send their votes in to the voting 
system and hope that the right answer comes out. Since the database table is held by the voting system in a "black box", they have no way to audit the system.

A solution to this is that the voting system can make each transaction it receives public, and do so in a way that proves that the transactions that have already 
been made public were not falisfied later. In this system, non-falsifiable, durable transparent logging is implemented with a Cothority, a cooperative authority of 
nodes who work together to maintain a Skipchain. [3,5]

# Protecting privacy: Shuffling the ballots
Voters need to be identified to the system, so that each voter gets one vote, and so that they can change their vote, but the system will only count the last one.
But if the system (and, as a result of the transparency log, the public) knows the names of the voters, should we also see the votes themselves? No!

Voters encrypt their votes via public key encryption before they send them in to the voting system. But the voting system must be able to unlock the votes later,
in order to count them. And once the votes are unlocked, the privacy would be lost if the unlocked ballot was connected to the proof that a certain voter cast it.

What is needed is to separate the votes from who cast them, so that the votes can be unlocked without losing privacy. In this system, privacy is assured using ideas
from Andrew Neff, and from the Helios voting system [1,2].

# Distributing secret key material
No single node can hold the keys for decryption alone, or else that node could violate the privacy or even falsify the votes. A Distributed Key Generation algorithm 
is used to ensure that each election has a public key to use to encrypt the ballots, but the private key to unlock them later is not available in any one single server. 

# What you see on the E-voting status page
On the top of the page, you can choose between the test and live configurations.

In the middle of the page, you can see the list of nodes which are working together to witness the election, and hold each other accountable for the correct implementation
of the transparency skipchain, the shuffling, and decryption operations.

At the bottom of the page, you can see a live view of the skipchains for elections run on this system. Depending on when you view it, you may see the election config and
some ballots cast. When an election is finalized and the votes are unlocked, there are a series of "Ballot shuffle operations"
and "Partial decryption operations" which are permanently recorded onto the skipchain. Because you are looking at the skipchain, you'll see that some blocks are skipped over. 
By following links from the blocks you have, you can find the blocks that are skipped. For efficiency, this web page does not follow all of those links, but someone who wanted 
to audit the election would be able to.

When enough partial decryption operations are done, they can be combined together in order to reconstruct the original votes in plaintext. They can be downloaded, decoded, and 
counted in the browser. An auditor can download all the blocks from the skipchain and verify that the election was conducted fairly.

# Voting using Public Key Infrastructure
At the start of the application, the user registers to vote by providing their drivers license number, registrar district, and first and last name. In this step, we can check 
to see if the drivers license is valid, and has not been registered previously. If all goes well, we create a private and public key for the voter with our certificate authority
that is running on the cloud, and add those keys to the wallet. To read more about public key infrastructure, and how Hyperledger Fabric implements identity using this technology, go here.

After that, we use our drivers license number to submit our vote, during which the application checks if this drivers license number has voted before and tells the user they have 
already submitted a vote if so. If all goes well, the political party which the voter has chosen is given a vote, and the world state is updated. The application then updates our current
standings of the election to show how many votes each political party currently has.

Since each transaction that is submitted to the ordering service must have a signature from a valid public-private key pair, we can trace back each transaction to a registered voter of the
application, in the case of an audit.

In conclusion, although this is a simple application, the developer can see how they can implement a Hyperledger Fabric web-app to decrease the chance of election-meddling, and enhance a 
voting application by using blockchain technology.

When the reader has completed this code pattern, they will understand how to:

Create, build, and use the IBM Blockchain Platform service.
Build a blockchain back-end using Hyperledger Fabric API's
Create and use a (free) Kubernetes Cluster to deploy and monitor our Hyperledger Fabric nodes.
Deploy a Node.js app that will interact with our deployed smart contract.
