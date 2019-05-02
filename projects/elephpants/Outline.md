Who is collectin elephants:

Elaphants are collected by Zoos

Each Zoo has several elephants

What elephants can be in a collection:

Elphants have different types:

Spieces:
* African Elephant
* Asian Elphant

Sexes:
* Male
* Female

Ages:
* Young elphants
* Adult elphants
* Ederly elphants

How do you faciliate trades?

Elephant moves from one zoo to another.

How do you track the history of a collection?
How are new elephpants created?

Elephants can be either recieved through a trade, or they they can be born through parents.

Each elphant needs to have a male and female parent.


-----------------

Elephants table:

* Elaphant ID (primary)
* Elphant name -> varchar
* Elphant Spieces -> Spieces table
* Elephant Sex -> Sex table
* Elephant age -> integer
* Elephant weight -> float

Species:
* Speices ID (primary)
* Speices name -> varchar

Sex table:
* Sex ID (primary)
* Sex name -> varchar

Residency:
* Residency ID (primary)
* Zoo -> Zoo
* Elepahnt -> Elephant

Zoo:
* Zoo ID (primary)
* Zoo name (varchar)
* Zoo address (varchar)
* Zoo phonenumber (varchar)

Trades:
* Trade ID (primary)
* Trade date (datetime)
* TradedFrom (zoo)
* TradedToo (zoo)

Births:
* Birth ID (primary)
* Mother (elephant)
* Father (elephant)
* Baby (elephant)
