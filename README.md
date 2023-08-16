# DataBase_MySql-task

1. Document Stores
2. Key-Value (KV) Stores
3. Column Family Data stores or Wide column data stores
4. Graph Databases

1. Document Stores

  The MySQL Document Store provides multi-document transaction support and full ACID compliance for schema-less JSON documents. With InnoDB as the storage engine behind the Document Store, you get the same data guarantees and performance advantages as you do for relational data.


Document databases are efficient and effective for storing catalog information. For example, in an e-commerce application, different products usually have different numbers of attributes. Managing thousands of attributes in relational databases is inefficient, and the reading performance is affected.
  
Examples of Document Store DBMSs
MongoDB.
DocumentDB.
CouchDB.
MarkLogic.
OrientDB

2.  Key-Value (KV) Stores This is the simplest type of NoSQL database.Under this type, the data is stored in the form of key/value pairs. For each Key, there is a value assigned to it. Each Key is unique and accepts only strings, whereas the value corresponding to the particular Key can accept String, JSON, XML, etc. Owing to this behavior, it is capable of dealing with massive loads of data.
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


3. Column Family Data store or Wide column data stores

Wide-column databases are also known as column family databases. Because data is stored in columns, queries for a particular value in a column are very fast, as the entire column can be loaded and searched quickly. Related columns can be modeled as part of the same column family.

4. Graph Databases
   A graph database stores nodes and relationships instead of tables, or documents. Data is stored just like you might sketch ideas on a whiteboard. Your data is stored without restricting it to a pre-defined model, allowing a very flexible way of thinking about and using it.

   Why Graph Databases?
   
   We live in a connected world, and understanding most domains requires processing rich sets of connections to understand what’s really happening. Often, we find that the connections between items are as important as the items themselves.
   
How else do people do this today? While existing relational databases can store these relationships, they navigate them with expensive JOIN operations or cross-lookups, often tied to a rigid schema. It turns out that "relational" databases handle relationships poorly. In a graph database, there are no JOINs or lookups. Relationships are stored natively alongside the data elements (the nodes) in a much more flexible format. Everything about the system is optimized for traversing through data quickly; millions of connections per second, per core.

Graph databases address big challenges many of us tackle daily. Modern data problems often involve many-to-many relationships with heterogeneous data that sets up needs to:

Navigate deep hierarchies,

Find hidden connections between distant items, and

Discover inter-relationships between items.

Whether it’s a social network, payment networks, or road network you’ll find that everything is an interconnected graph of relationships. And when we want to ask questions about the real world, many questions are about the relationships rather than about the individual data elements.


   



1 . ER DIAGRAM 

An Entity Relationship (ER) Diagram is a type of flowchart that illustrates how “entities” such as people, objects or concepts relate to each other within a system.

What is ER diagram used for?

An ERD visualizes the relationships between entities like people, things, or concepts in a database. An ERD will also often visualize the attributes of these entities. By defining the entities, their attributes, and showing the relationships between them, an ER diagram can illustrate the logical structure of databases.

Types :
There are two kinds of ER diagrams: conceptual and physical. Conceptual diagram models can provide the foundation for logical data models or show commonality relationships between ER models as a basis for data-model integration.

