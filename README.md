# DataBase_MySql-task

1. Key-Value (KV) Stores
2. Document Stores
3. Column Family Data stores or Wide column data stores
4. Graph Databases

1. Key-Value (KV) Stores This is the simplest type of NoSQL database.Under this type, the data is stored in the form of key/value pairs. For each Key, there is a value assigned to it. Each Key is unique and accepts only strings, whereas the value corresponding to the particular Key can accept String, JSON, XML, etc. Owing to this behavior, it is capable of dealing with massive loads of data.
KV stores have fast query performance and are best suited for applications that require content caching, e.g. a gaming website that constantly updates the top 10 scores & players.



Key-Value Pairs Database: Features:

Consistency
Transactions
Query Features
Data Structure
Scaling
Pros:
– Simple Data model

– Scalable

– Value can include JSON, XML, flexible schemas

– Extremely Fast Owing to it’s simplicity

– Best fit for cases where data is not highly related

Cons:
– No relationships, create your own foreign keys

– Not suitable for complex data

– Lacks Scanning Capabilities

– Not ideal for operations rather than CRUD (create, read, update Delete )

Key-Value Pairs Database: Use Case:
These kinds of databases are best suited for the following cases:

Storing session information: offers to save and restore sessions. User preferences: Specific Data for a particular user Shopping carts: easily handle the loss of storage nodes and quickly scale Big data during a holiday/sale on an e-commerce application. Product recommendations: offering recommendations based on the person’s data. Popular KV Stores would include Dynamo DB, Redis, BerkleyDB.

