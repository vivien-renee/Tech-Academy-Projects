CREATE DATABASE db_library;

USE db_library;

CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR (50) NOT NULL,
	Address VARCHAR (50) NOT NULL
);


CREATE TABLE Publisher (
	PublisherID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	PublisherName VARCHAR (50) NOT NULL,
	Address VARCHAR (50) NOT NULL,
	Phone VARCHAR (50) NOT NULL
);



CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR (50) NOT Null,
	PublisherID INT NOT NULL CONSTRAINT fk_PublisherID FOREIGN KEY REFERENCES Publisher (PublisherID) ON UPDATE CASCADE ON DELETE CASCADE,
	PublisherName VARCHAR (50) NOT NULL
);

CREATE TABLE Book_Authors (
	AuthorID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	AuthorName VARCHAR (50) NOT NULL,
	BookID INT NOT NULL CONSTRAINT fk_BookID FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE Book_Copies (
	BookID INT NOT NULL CONSTRAINT fk_CopiesBookID FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID INT NOT NULL CONSTRAINT fk_CopiesBranchID FOREIGN KEY REFERENCES Library_Branch (BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
	Number_Of_Coppies INT NOT NULL 
);

CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR (50) NOT NULL,
	Address VARCHAR (50) NOT NULL,
	Phone Phone VARCHAR (50) NOT NULL;

);


CREATE TABLE Book_Loans (
	BookID INT NOT NULL CONSTRAINT fk_LoansBookID FOREIGN KEY REFERENCES Books (BookID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID INT NOT NULL CONSTRAINT fk_LoansBranchID FOREIGN KEY REFERENCES Library_Branch (BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
	CardNo INT NOT NULL CONSTRAINT fk_LoansCardNo FOREIGN KEY REFERENCES Borrower (CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);


--Populate Tables

--Getting a book in the database needs 3 tables Publisher, Books, then Book_Author
--The Lost Tribe
INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Holt Paperbacks' , '175 Fifth Avenue
	New York, NY 10010' , '646-307-5095')
;


INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('The lost Tribe' , (select PublisherID FROM Publisher where PublisherName = 'Holt Paperbacks'), 'Holt Paperbacks')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Mark Lee' , (SELECT BookID FROM Books where Title = 'The Lost Tribe')
	
);

--The Canal House
INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Harvest book' , '185 Commerce Drive
Fort Washington, PA 19034' , '215-619-0307')
;


INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('The Canal House' , (select PublisherID FROM Publisher where PublisherName = 'Harvest book'), 'Harvest book')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Mark Lee' , (SELECT BookID FROM Books where Title = 'The Canal House')
	
);

-- It
INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('Viking' , '375 Hudson St
New York, NY 10014' , '978-750-8400')
;


INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('It' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Stephen King' , (SELECT BookID FROM Books where Title = 'It')
	
);




--Carrie
INSERT INTO Publisher
	(PublisherName, Address, Phone)
	VALUES
	('DoubleDay' , '1745 Broadway
New York, NY 10019' , '(212) 940-7390')
;


INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Carrie' , (select PublisherID FROM Publisher where PublisherName = 'DoubleDay'), 'DoubleDay')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Stephen King', (SELECT BookID FROM Books where Title = 'Carrie')
	
);


--Park Avenue Summer, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Park Avenue Summer' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Renee Rosen' , (SELECT BookID FROM Books where Title = 'Park Avenue Summer')
	
);

--Windy City Blues, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Windy City Blues' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Renee Rosen' , (SELECT BookID FROM Books where Title = 'Windy City Blues')
	
);

--Fire Season, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Fire Season' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Stephen Blackmoore' , (SELECT BookID FROM Books where Title = 'Fire Season')
	
);

--Hungry Ghosts, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Hungry Ghosts' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Stephen Blackmoore' , (SELECT BookID FROM Books where Title = 'Hungry Ghosts')
	
);


--Tooth and Claw, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Tooth and Claw' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Deborah Noyes' , (SELECT BookID FROM Books where Title = 'Tooth and Claw')
	
);

--The Magician and the Spirits, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('The Magician and the Spirits' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Deborah Noyes' , (SELECT BookID FROM Books where Title = 'The Magician and the Spirits')
	
);

--Murder on Trinity Place, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Murder on Trinity Place' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Victoria Thompson' , (SELECT BookID FROM Books where Title = 'Murder on Trinity Place')
	
);

--City of Secrets, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('City of Secrets' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Victoria Thompson' , (SELECT BookID FROM Books where Title = 'City of Secrets')
	
);

--The Global Age, Viking publisher already added to database
INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('The Global Age' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Ian Kershaw' , (SELECT BookID FROM Books where Title = 'The Global Age')
	
);

--To Hell and Back, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('To Hell and Back' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Ian Kershaw' , (SELECT BookID FROM Books where Title = 'To Hell and Back')
	
);

--Safe Houses, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Safe Houses' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Dan Fesperman' , (SELECT BookID FROM Books where Title = 'Safe Houses')
	
);

--The Letter Writer, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('The Letter Writer' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('Dan Fesperman' , (SELECT BookID FROM Books where Title = 'The Letter Writer')
	
);

--A Terrible Country, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('A Terrible Country' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('KEITH GESSEN' , (SELECT BookID FROM Books where Title = 'A Terrible Country')
	
);

--All the Sad Young Literary Men, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('All the Sad Young Literary Men' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('KEITH GESSEN' , (SELECT BookID FROM Books where Title = 'All the Sad Young Literary Men')
	
);

--Feel Free, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Feel Free' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('ZADIE SMITH' , (SELECT BookID FROM Books where Title = 'Feel Free')
	
);

--Swing Time, Viking publisher already added to database

INSERT INTO Books
	(Title, PublisherID, PublisherName)
	VALUES
	('Swing Time' , (select PublisherID FROM Publisher where PublisherName = 'Viking'), 'Viking')
;

INSERT INTO Book_Authors
	(AuthorName, BookID)
	VALUES
	('ZADIE SMITH' , (SELECT BookID FROM Books where Title = 'Swing Time')
	
);


--End of Publisher, Book, and Author inputs

--Library Branch Population

INSERT INTO Library_Branch
	(BranchName, Address)
	Values
	('Central' , '782 N. Avenue Street, Central City, WA 10921'),
	('Sharpstown' , '4423 S. Lane Rd, Riverside, WA 92418'),
	('Appletown' , '923 Apple St, Cape City, WA 12323'),
	('Dogstown' , '245 W. Lazy St, Lazytown, WA 98888')
;

--Borrower table population

INSERT INTO Borrower
	(Name, Address, Phone)
	VALUES
	('Alice Smith' , '2343 7th av, Ragtown, WA 78889 ' , '555-222-3245'),
	('Bob Bober' , '808 W. Bob St, Bananatown, WA 08888' , '324-532-4567'),
	('Jane Janie' , '5345 Jam St, Cherrytown, WA 98999' , '234-555-6666'),
	('Laura Laugher' , '98 W. Butter St, Pajamatown, WA 98333' , '111-112-3333'),
	('Nemo Fish' , '903 N. Kite St, Sleepytown, WA 98777' , '444-333-6667'),
	('Taylor Slow' , '4562 S. Rain St, Soda City, WA 98888' , '555-043-3333'),
	('Hellen Saint' , '789 E. Pickle Lane, Ice Cream City, WA 98999' , '333-444-5555'),
	('Sunny Day' , '7680 E. Lamb Av, Medows, WA 98222' , '222-333-4444')
	('John Smith' , '2003 14th av, Central, WA 78889 ' , '555-222-0000')
;




-- Book_Copies Population for Central Library

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;


-- Book_Copies Population for Sharpstown Library

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , '7')
;


-- Book_Copies Population for Central Library

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , '7')
;


-- Book_Copies Population for Appletown Library

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , '7')
;

-- Book_Copies Population for Dogstown Library

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;

INSERT INTO Book_Copies
	(BookID, BranchID, Number_Of_Coppies)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , '7')
;


--Book loans Central Branch
	--Alice Smith
	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Alice Smith') , '08/01/2018' , '08/21/2018')                                                      
;

	--Bob Bober
	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;

	INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Central') , 
	(Select CardNo From Borrower Where Name = 'Bob Bober') , '08/05/2018' , '08/26/2018')                                                      
;


--Book loans Sharpstown Branch
	--Jane Janie

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Jane Janie') , '08/02/2018' , '08/23/2018')                                                      
;

-- Laura Laugher

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'Laura Laugher') , '08/05/2018' , '08/26/2018')                                                      
;

--Book Loans Appletown Branch
--Nemo Fish

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Nemo Fish') , '08/01/2018' , '08/21/2018')                                                      
;

--Book Loans Appletown Branch
--Taylor Slow

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'To Hell and Back') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Letter Writer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'All the Sad Young Literary Men') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Swing Time') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Lost Tribe') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'It') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Appletown') , 
	(Select CardNo From Borrower Where Name = 'Taylor Slow') , '08/15/2018' , '09/04/2018')                                                      
;

--Book Loans Dogstown
--Hellen Saint

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Park Avenue Summer') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Fire Season') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Tooth and Claw') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Murder on Trinity Place') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Global Age') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Safe Houses') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'A Terrible Country') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Hellen Saint') , '08/03/2018' , '08/23/2018')                                                      
;


---Book Loans Dogstown
--Sunny Day

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Feel Free') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Canal House') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Carrie') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Windy City Blues') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'Hungry Ghosts') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'The Magician and the Spirits') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;

INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Dogstown') , 
	(Select CardNo From Borrower Where Name = 'Sunny Day') , '08/06/2018' , '08/26/2018')                                                      
;


	--------------------
	------------
	--------------
INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = '') , (SELECT BranchID From Library_Branch WHERE BranchName = '') , 
	(Select CardNo From Borrower Where Name = '') , '' , '')                                                      
;

--Stored Procedures
--1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
	--Book Copies A, Library Branch B, Books C

CREATE PROCEDURE dbo.CopiesOfLT 
	AS 
SELECT a.Number_of_Coppies 
	From Book_Copies a
	JOIN Library_Branch b ON a.BranchID = b.BranchID
	JOIN Books c ON a.BookID = c.BookID
	Where Title = 'The Lost Tribe' 
	and BranchName = 'Sharpstown'
;
 EXECUTE dbo.CopiesOfLT;

--2. How many copies of the book titled "The Lost Tribe" are owned by each library branch?

CREATE PROCEDURE dbo.CopiesOfLTAllLibrary 
	AS
SELECT a.Number_of_Coppies, b.BranchName
	From Book_Copies a
	JOIN Library_Branch b ON a.BranchID = b.BranchID
	JOIN Books c ON a.BookID = c.BookID
	Where Title = 'The Lost Tribe' 
;

EXECUTE dbo.CopiesOfLTAllLibrary;


--3. Retrieve the names of all borrowers who do not have any books checked out.

CREATE PROCEDURE dbo.NoBooksBorrowed
	AS
Select a.Name
	FROM Borrower a
	LEFT JOIN Book_Loans b on a.CardNo = b.CardNo

	Where b.CardNo is NULL
;

EXECUTE dbo.NoBooksBorrowed;


--4 For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.


INSERT INTO Book_Loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	((SELECT BookID FROM Books WHERE Title = 'City of Secrets') , (SELECT BranchID From Library_Branch WHERE BranchName = 'Sharpstown') , 
	(Select CardNo From Borrower Where Name = 'John Smith') , '07/23/2018' , '08/14/2018')                                                      
;
--A Library branch, B Book Loans, C Borrower, D Books

CREATE PROCEDURE dbo.DateDue @DateDue nvarchar(50) = null
AS
SELECT d.Title, c.Name, c.Address
	FROM Book_Loans b
	JOIN Library_Branch a ON b.BranchID = a.BranchID
	JOIN Borrower c ON b.CardNO = c.CardNo
	JOIN Books d ON b.BookID = d.BookID
	WHERE BranchName = 'Sharpstown'
	and DateDue = ISNULL (@DateDue,DateDue)
;

EXECUTE dbo.DateDue @DateDue='08/14/2018';

--5 For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
--a Library Branch, b book copies, c book loans

CREATE PROCEDURE dbo.BookCount
AS
SELECT b.BranchName, COUNT(a.BookID)
	FROM Book_Loans a
	JOIN Library_Branch b on a.BranchID = b.BranchID
		GROUP BY b.BranchName
;

EXECUTE dbo.BookCount;

--6 Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.

CREATE PROCEDURE dbo.GreaterThanFive
AS
SELECT b.Name, b.Address, COUNT(a.BookID)
	From Book_Loans a
	JOIN Borrower b on a.CardNo = b.CardNo
	Group BY b.Name, b.Address
	HAVING COUNT(a.BookID) > 5
;

EXECUTE dbo.GreaterThanFive;


--7 For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".
--a Book Copies, b Library Branch, c Book Authors, d books

CREATE PROCEDURE dbo.KingCentral
AS
SELECT d.Title, a.Number_of_Coppies, c.AuthorName, b.BranchName
	FROM Book_Copies a
	JOIN Library_Branch b ON a.BranchID = b.BranchID
	JOIN Books d ON a.BookID = d.BookID
	Join Book_Authors c ON d.BookID = c.BookID
	WHERE c.AuthorName = 'Stephen King' AND b.BranchName = 'Central'
;

EXECUTE dbo.KingCentral;




