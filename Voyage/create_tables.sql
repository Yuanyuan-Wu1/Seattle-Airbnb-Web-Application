CREATE TABLE IF NOT EXISTS PriceCalendar (
    ListingId INT,
    Date DATE,
    Price DECIMAL(10,2),
    Adjusted_price DECIMAL(10,2),
    Minimum_nights INT,
    Maximum_nights INT,
    CONSTRAINT pk_PriceCalendar PRIMARY KEY (ListingId, Date),
    CONSTRAINT fk_PriceCalendar_Listings FOREIGN KEY (ListingId) 
        REFERENCES Listings(ListingId)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS AirbnbReviewers (
    ReviewerId INT PRIMARY KEY,
    ReviewerName VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS AirbnbReviews (
    ReviewId INT PRIMARY KEY,
    ListingId INT,
    ReviewerId INT,
    Comments TEXT,
    FOREIGN KEY (ListingId) REFERENCES Listings(ListingId),
    FOREIGN KEY (ReviewerId) REFERENCES AirbnbReviewers(ReviewerId)
);

CREATE TABLE IF NOT EXISTS Likes (
    UserId INT,
    ListingId INT,
    PRIMARY KEY (UserId, ListingId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (ListingId) REFERENCES Listings(ListingId)
);

CREATE TABLE IF NOT EXISTS Dislikes (
    UserId INT,
    ListingId INT,
    PRIMARY KEY (UserId, ListingId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (ListingId) REFERENCES Listings(ListingId)
);

CREATE TABLE IF NOT EXISTS Messages (
    MessageId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT,
    ListingId INT,
    Content TEXT,
    Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (ListingId) REFERENCES Listings(ListingId)
);
