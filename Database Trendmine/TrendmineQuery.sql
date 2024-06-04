Create Database Trendmine_Project_93
use Trendmine_Project_93
CREATE TABLE UserProfiles (
    userID INT IDENTITY(1,1) PRIMARY KEY,
    Full_Name VARCHAR(255),
    UserName VARCHAR(255),
    User_Password VARCHAR(255),
    Mobile_Number VARCHAR(20),
    Email VARCHAR(255),
    birthDate DATE,
    verificationCode VARCHAR(255),
    userAddress VARCHAR(255),
    Gender VARCHAR(10),
    NumberOfPoints INT,
    profileCompletionPercent INT,
    Created_Account_Date  DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME
);
select * from inventory Join Product_InventoryJunction on Product_InventoryJunction.InventoryID=inventory.InventoryID Join ProductInformation on ProductInformation.Prod_Id=Product_InventoryJunction.Prod_Id;
UPDATE [dbo].[ProductInformation] SET Quantity = 200 WHERE Prod_Id = 25;
update Inventory set PricePerPiece=PricePerPiece-500;
Update ProductInformation set Prod_Price=Prod_Price+500;
Update

INSERT INTO UserProfiles (userID,Full_Name, UserName, User_Password, Mobile_Number, Email, birthDate, verificationCode, userAddress, Gender, NumberOfPoints, profileCompletionPercent, UpdatedAt)
VALUES 
    (1,'Ali Khan', 'ali_khan123', 'password123', '03xx-xxxxxxx', 'ali.khan@example.com', '1990-05-15', 'abc123', '123 Main Street, Lahore', 'Male', 50, 80, GETDATE()),
    (2,'Sana Ahmed', 'sana_ahmed', 'pass456', '03xx-xxxxxxx', 'sana.ahmed@example.com', '1985-09-23', 'xyz456', '456 Park Avenue, Karachi', 'Female', 30, 60, GETDATE()),
    (3,'Usman Malik', 'usman_m', 'usmanPass', '03xx-xxxxxxx', 'usman.malik@example.com', '1995-12-10', 'def789', '789 Liberty Road, Islamabad', 'Male', 20, 40, GETDATE()),
    (4,'Farah Khan', 'farah_k', 'farahPass', '03xx-xxxxxxx', 'farah.khan@example.com', '1988-07-08', 'ghi987', '987 Ocean Street, Karachi', 'Female', 40, 70, GETDATE()),
    (5,'Rizwan Ahmed', 'rizwan_a', 'rizwanPass', '03xx-xxxxxxx', 'rizwan.ahmed@example.com', '1992-02-20', 'jkl654', '654 Garden Lane, Lahore', 'Male', 60, 90, GETDATE()),
    (6,'Nida Aslam', 'nida_aslam', 'nidaPass', '03xx-xxxxxxx', 'nida.aslam@example.com', '1987-11-05', 'mno321', '321 Green Road, Karachi', 'Female', 25, 55, GETDATE()),
    (7,'Asad Ali', 'asad_ali', 'asadPass', '03xx-xxxxxxx', 'asad.ali@example.com', '1993-04-30', 'pqr789', '789 Sunset Boulevard, Peshawar', 'Male', 35, 65, GETDATE()),
    (8,'Ayesha Khan', 'ayesha_k', 'ayeshaPass', '03xx-xxxxxxx', 'ayesha.khan@example.com', '1984-08-15', 'stu456', '456 Silver Street, Karachi', 'Female', 55, 85, GETDATE()),
    (9,'Kamran Sheikh', 'kamran_s', 'kamranPass', '03xx-xxxxxxx', 'kamran.sheikh@example.com', '1998-03-10', 'vwx987', '987 Maple Avenue, Quetta', 'Male', 15, 30, GETDATE()),
    (10,'Fariha Ahmed', 'fariha_a', 'farihaPass', '03xx-xxxxxxx', 'fariha.ahmed@example.com', '1986-06-25', 'yzab123', '123 Hilltop Lane, Karachi', 'Female', 45, 75, GETDATE()),
	(11,'Muhammad Faizan','Muhammad Faizan','12345678','03xx-xxxxxxx','faizan.raza.kk@gmail.com','2002-12-25','ght4822','abc street, Nazimabad, Karachi','Male',80,80,getdate()),
(12,'Ahmed Khan', 'ahmedkhan91', 'password123', '03001234567', 'ahmed.khan@example.com', '1991-05-15', '123456', 'Nazimabad, Karachi', 'Male', 50, 80, '2024-01-15'),
(13,'Usman Ali', 'usman_ali86', 'pass1234', '03111234567', 'usman.ali@example.com', '1986-08-22', '654321', 'Gulshan, Karachi', 'Male', 30, 60, '2024-01-15'),
(14,'Imran Siddiqui', 'imran_siddiqui78', 'testpass', '03221234567', 'imran.siddiqui@example.com', '1978-11-03', '987654', 'Nazimabad, Karachi', 'Male', 40, 70, '2024-01-15'),
(15,'Fahad Ahmed', 'fahad_ahmed85', 'secure123', '03451234567', 'fahad.ahmed@example.com', '1985-04-19', '456789', 'Gulshan, Karachi', 'Male', 60, 90, '2024-01-15'),
(16,'Bilal Qureshi', 'bilal_qureshi92', 'myp@ssword', '03331234567', 'bilal.qureshi@example.com', '1992-07-10', '321098', 'Nazimabad, Karachi', 'Male', 35, 75, '2024-01-15'),
(17,'Noman Malik', 'noman_malik89', 'p@ss123', '03211234567', 'noman.malik@example.com', '1989-02-28', '765432', 'Gulshan, Karachi', 'Male', 45, 85, '2024-01-15'),
(18,'Saad Ahmed', 'saad_ahmed88', 'test1234', '03151234567', 'saad.ahmed@example.com', '1988-09-12', '234567', 'Nazimabad, Karachi', 'Male', 55, 95, '2024-01-15'),
(19,'Waqar Khan', 'waqar_khan87', 'securepwd', '03461234567', 'waqar.khan@example.com', '1987-06-25', '876543', 'Gulshan, Karachi', 'Male', 25, 55, '2024-01-15'),
(20,'Asif Ali', 'asif_ali94', 'passtest', '03021234567', 'asif.ali@example.com', '1994-03-08', '345678', 'Nazimabad, Karachi', 'Male', 50, 80, '2024-01-15'),
(21,'Imtiaz Butt', 'imtiaz_butt81', 'securepass', '03141234567', 'imtiaz.butt@example.com', '1981-12-17', '890123', 'Gulshan, Karachi', 'Male', 30, 60, '2024-01-15'),
(22,'Farhan Mahmood', 'farhan_mahmood93', 'password1234', '03471234567', 'farhan.mahmood@example.com', '1993-04-30', '567890', 'Nazimabad, Karachi', 'Male', 40, 70, '2024-01-15'),
(23,'Irfan Ahmed', 'irfan_ahmed82', 'securetest', '03091234567', 'irfan.ahmed@example.com', '1982-11-08', '109876', 'Gulshan, Karachi', 'Male', 60, 90, '2024-01-15'),
(24,'Aamir Khan', 'aamir_khan95', 'mypassword', '03481234567', 'aamir.khan@example.com', '1995-07-22', '234567', 'Nazimabad, Karachi', 'Male', 35, 75, '2024-01-15'),
(25,'Omar Siddiqui', 'omar_siddiqui83', 'testpassword', '03251234567', 'omar.siddiqui@example.com', '1983-02-18', '456789', 'Gulshan, Karachi', 'Male', 45, 85, '2024-01-15'),
(26,'Kamran Ahmed', 'kamran_ahmed86', 'p@ss1234', '03051234567', 'kamran.ahmed@example.com', '1986-09-07', '765432', 'Nazimabad, Karachi', 'Male', 55, 95, '2024-01-15'),
(27,'Naeem Malik', 'naeem_malik91', 'secure@123', '03491234567', 'naeem.malik@example.com', '1991-05-25', '321098', 'Gulshan, Karachi', 'Male', 25, 55, '2024-01-15'),
(28,'Adnan Khan', 'adnan_khan84', 'securepwd1', '03121234567', 'adnan.khan@example.com', '1984-10-14', '654321', 'Nazimabad, Karachi', 'Male', 50, 80, '2024-01-15'),
(29,'Rizwan Ali', 'rizwan_ali89', 'pass@word', '03401234567', 'rizwan.ali@example.com', '1989-03-30', '987654', 'Gulshan, Karachi', 'Male', 30, 60, '2024-01-15'),
(30,'Yousuf Butt', 'yousuf_butt92', 'p@ssword123', '03261234567', 'yousuf.butt@example.com', '1992-06-12', '456789', 'Nazimabad, Karachi', 'Male', 40, 70, '2024-01-15'),
(31,'Ahmed Raza', 'ahmed_raza87', 'test@pass', '03071234567', 'ahmed.raza@example.com', '1987-01-05', '234567', 'Gulshan, Karachi', 'Male', 60, 90, '2024-01-15');
select *from UserProfiles
CREATE TABLE UserSessions (
    sessionID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT,
    sessionToken VARCHAR(255),
    last_activity DATETIME,
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID)
);
select * from UserProfiles

SET IDENTITY_INSERT UserSessions On;
INSERT INTO UserSessions (sessionID,userID, sessionToken, last_activity)
VALUES
(1,5, 'session_token_abc123', '2024-01-15 10:30:00'),
(2,11, 'session_token_xyz456', '2024-01-15 11:45:00'),
(3,3, 'session_token_pqr789', '2024-01-15 09:15:00'),
(4,9, 'session_token_123abc', '2024-01-15 13:20:00'),
(5,17, 'session_token_456xyz', '2024-01-15 15:00:00'),
(6,6, 'session_token_789pqr', '2024-01-15 14:30:00'),
(7,13, 'session_token_abc456', '2024-01-15 12:45:00'),
(8,7, 'session_token_xyz789', '2024-01-15 11:00:00'),
(9,19, 'session_token_pqr123', '2024-01-15 16:10:00'),
(10,2, 'session_token_123xyz', '2024-01-15 17:20:00'),
(11,15, 'session_token_456abc', '2024-01-15 10:45:00'),
(12,14, 'session_token_789xyz', '2024-01-15 12:00:00'),
(13,8, 'session_token_abc789', '2024-01-15 14:15:00'),
(14,10, 'session_token_xyz123', '2024-01-15 15:30:00'),
(15,4, 'session_token_pqr456', '2024-01-15 16:45:00'),
(16,12, 'session_token_123pqr', '2024-01-15 18:00:00'),
(17,16, 'session_token_456def', '2024-01-15 19:15:00'),
(18,1, 'session_token_789ghi', '2024-01-15 13:45:00'),
(19,18, 'session_token_abc123', '2024-01-15 11:30:00'),
(20,20, 'session_token_xyz456', '2024-01-15 10:00:00');


CREATE TABLE GuestUsers (
    GuestUserID INT IDENTITY(1,1) PRIMARY KEY,
    SessionID INT unique,
    Timestamps DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (sessionID) REFERENCES UserSessions(sessionID)
);

INSERT INTO GuestUsers (SessionID, Timestamps)
VALUES 
    (1, GETDATE()),
    (12, DATEADD(HOUR, 1, GETDATE())),
    (13, DATEADD(HOUR, 2, GETDATE())),
    (4, DATEADD(HOUR, 3, GETDATE())),
    (15, DATEADD(HOUR, 4, GETDATE())),
    (14, DATEADD(HOUR, 5, GETDATE())),
    (7, DATEADD(HOUR, 6, GETDATE())),
    (8, DATEADD(HOUR, 7, GETDATE())),
    (9, DATEADD(HOUR, 8, GETDATE())),
    (10, DATEADD(HOUR, 9, GETDATE()));
	select * from ProductInformation where Prod_Id=25;

CREATE TABLE ProductInformation (-----------------j=1
    Prod_Id INT IDENTITY(1,1) PRIMARY KEY,
	CategoryID Int,
    Prod_Name VARCHAR(255),
    Prod_Description TEXT,
    Prod_manufacturer VARCHAR(255),
    Prod_Price DECIMAL(10, 2),
	Quantity int,
    prodImage VARCHAR(255),
    isActive BIT,
    NumberOfPoints INT,
     FOREIGN KEY (CategoryID) REFERENCES ProductCategory(CategoryID),
);


INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(1, 'Kelloggs Corn Flakes', 'Classic breakfast cereal made with crispy flakes of corn', 'Kelloggs', 4.99, 100, 'corn_flakes.jpg', 1, 4),
(1, 'Lays Potato Chips', 'Thin and crispy potato chips', 'PepsiCo', 2.99, 150, 'lays_chips.jpg', 1, 4),
(1, 'Heinz Ketchup', 'Tomato ketchup with a perfect blend of sweetness and tanginess', 'Heinz', 3.49, 80, 'heinz_ketchup.jpg', 1, 4),
(1, 'Quaker Oats', 'Whole grain oats for a healthy and nutritious breakfast', 'Quaker', 5.99, 90, 'quaker_oats.jpg', 1, 4),
(1, 'Nature Valley Granola Bars', 'Crunchy granola bars for a quick and tasty snack', 'General Mills', 2.49, 120, 'nature_valley_bars.jpg', 1, 4),
(1, 'Green Giant Frozen Vegetables', 'Frozen vegetables for easy and convenient meal preparation', 'Green Giant', 3.99, 110, 'green_giant_vegetables.jpg', 1, 4),
(1, 'McCormick Spices Set', 'Quality spices for enhancing the flavor of your dishes', 'McCormick', 9.99, 95, 'mccormick_spices.jpg', 1, 4),
(1, 'Coca-Cola', 'Refreshing carbonated beverage for any occasion', 'The Coca-Cola Company', 1.99, 130, 'cocacola.jpg', 1, 4),
(1, 'Tropicana Orange Juice', '100% pure orange juice for a healthy start', 'Tropicana', 3.99, 70, 'tropicana_juice.jpg', 1, 4),
(1, 'Haagen-Dazs Ice Cream', 'Indulgent ice cream for a delightful dessert experience', 'Haagen-Dazs', 4.99, 85, 'haagendazs_ice_cream.jpg', 1, 4),
(1, 'Nestle Coffee', 'Rich and aromatic coffee for your morning brew', 'Nestle', 6.99, 100, 'nestle_coffee.jpg', 1, 4),
(1, 'Kraft Macaroni and Cheese', 'Classic macaroni and cheese for a quick meal', 'Kraft', 1.99, 120, 'kraft_mac_cheese.jpg', 1, 4),
(1, 'Kelloggs Special K', 'Nutritious cereal with whole grains and delicious taste', 'Kelloggs', 3.49, 80, 'special_k.jpg', 1, 4),
(1, 'Pillsbury Cookie Dough', 'Ready-to-bake cookie dough for homemade treats', 'Pillsbury', 4.49, 90, 'pillsbury_cookie_dough.jpg', 1, 4),
(1, 'Ocean Spray Cranberry Juice', 'Refreshing cranberry juice with a hint of sweetness', 'Ocean Spray', 2.99, 110, 'ocean_spray_juice.jpg', 1, 4),
(1, 'Hellmanns Mayonnaise', 'Creamy mayonnaise for sandwiches and salads', 'Unilever', 3.29, 95, 'hellmanns_mayonnaise.jpg', 1, 4),
(1, 'Gatorade Sports Drink', 'Electrolyte-filled sports drink for hydration', 'PepsiCo', 1.79, 130, 'gatorade_sports.jpg', 1, 4),
(1, 'Hersheys Chocolate Bar', 'Classic milk chocolate bar for sweet indulgence', 'Hershey', 2.49, 70, 'hersheys_chocolate.jpg', 1, 4),
(1, 'Prego Pasta Sauce', 'Flavorful pasta sauce for a delicious Italian meal', 'Campbell Soup Company', 2.99, 85, 'prego_pasta_sauce.jpg', 1, 4),
(1, 'Ben & Jerrys Ice Cream', 'Artisan ice cream with a variety of unique flavors', 'Ben & Jerrys', 5.99, 105, 'ben_jerrys_ice_cream.jpg', 1, 4),
(2, 'Nestlé Cornflakes', 'Classic breakfast cereal made with crispy flakes of corn', 'Nestlé Pakistan', 350.00, 100, 'nestle_cornflakes.jpg', 1, 10),
(2, 'Quaker Oats', 'Healthy and heart-friendly oatmeal', 'Quaker Pakistan', 120.00, 150, 'quaker_oats.jpg', 1, 5),
(2, 'Kurkure Masala Munch', 'Spicy and crunchy Indian snack', 'PepsiCo Pakistan', 60.00, 80, 'kurkure_masala_munch.jpg', 1, 6),
(2, 'TUC Sandwich Biscuits', 'Savory biscuits with a creamy filling', 'Mondelez Pakistan', 100.00, 90, 'tuc_biscuits.jpg', 1, 9),
(2, 'National Biscuit Cookies', 'Traditional Pakistani biscuit cookies', 'National Foods', 80.00, 120, 'national_biscuit_cookies.jpg', 1, 7),
(2, 'Lu Bakeri Swiss Roll', 'Soft and delicious Swiss roll cake', 'English Biscuit Manufacturers', 150.00, 110, 'lu_bakeri_swiss_roll.jpg', 1, 8),
(2, 'Lays Potato Chips', 'Classic potato chips for a crunchy snack', 'PepsiCo Pakistan', 120.00, 95, 'lays_potato_chips.jpg', 1, 11),
(2, 'Mitchells Fruit Jam', 'Sweet and fruity jam for spreading on bread', 'Mitchells', 200.00, 130, 'mitchells_fruit_jam.jpg', 1, 4),
(2, 'Jazaa Chakki Fresh Atta', 'Freshly ground wheat flour for making breakfast items', 'Jazaa Foods', 400.00, 70, 'jazaa_chakki_fresh_atta.jpg', 1, 12),
(2, 'Nurpur Ghee', 'Pure and aromatic clarified butter for cooking', 'Nurpur', 600.00, 85, 'nurpur_ghee.jpg', 1, 3),
(2, 'Shan Chicken Biryani Mix', 'Ready-to-use biryani mix for a flavorful meal', 'Shan Foods', 50.00, 105, 'shan_chicken_biryani_mix.jpg', 1, 15),
(2, 'Harvest Whole Wheat Bread', 'Healthy whole wheat bread for breakfast', 'Harvest Foods', 120.00, 100, 'harvest_whole_wheat_bread.jpg', 1, 14),
(2, 'Peak Freans Butter Puff', 'Buttery and flaky puff pastry biscuits', 'English Biscuit Manufacturers', 90.00, 120, 'peak_freans_butter_puff.jpg', 1, 6),
(2, 'Rooh Afza', 'Refreshing drink concentrate for a cool beverage', 'Hamdard Pakistan', 250.00, 75, 'rooh_afza.jpg', 1, 9),
(2, 'ChenOne Honey Crunch', 'Honey-coated crunchy cereal for a sweet breakfast', 'ChenOne', 350.00, 110, 'chenone_honey_crunch.jpg', 1, 11),
(2, 'Kolson Noodles', 'Instant noodles for a quick and tasty snack', 'Kolson', 30.00, 85, 'kolson_noodles.jpg', 1, 7),
(2, 'K&Ns Chicken Franks', 'Spicy chicken franks for a delicious breakfast', 'K&Ns', 300.00, 95, 'kn_chicken_franks.jpg', 1, 8),
(2, 'Rooh Afza Drink', 'Ready-to-drink Rooh Afza beverage', 'JAZZ Pakistan', 50.00, 130, 'jazz_rooh_afza_drink.jpg', 1, 11),
(2, 'Sufi Cooking Oil', 'Premium cooking oil for frying and cooking', 'Sufi Group', 200.00, 70, 'sufi_cooking_oil.jpg', 1, 12),
(2, 'Shan Chat Masala', 'Spice blend for enhancing the flavor of snacks', 'Shan Foods', 80.00, 85, 'shan_chat_masala.jpg', 1, 10),
(2, 'Nescafe Instant Coffee', 'Quick and convenient instant coffee for a morning boost', 'Nestlé Pakistan', 300.00, 100, 'nescafe_instant_coffee.jpg', 1, 9);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(3, 'Shan Rice', 'High-quality Basmati rice for everyday cooking', 'Shan Foods', 500.00, 100, 'shan_rice.jpg', 1, 10),
(3, 'National Lentils (Masoor Daal)', 'Premium quality masoor daal for a protein-rich meal', 'National Foods', 120.00, 150, 'national_lentils_masoor_daal.jpg', 1, 5),
(3, 'Nestlé Nido Milk Powder', 'Fortified milk powder for nutritional needs', 'Nestlé Pakistan', 800.00, 80, 'nido_milk_powder.jpg', 1, 6),
(3, 'Dalda Cooking Oil', 'Vegetable cooking oil for everyday culinary use', 'Dalda Foods', 300.00, 90, 'dalda_cooking_oil.jpg', 1, 9),
(3, 'Shan Masala Mix Pack', 'Variety pack of essential masala mixes for various dishes', 'Shan Foods', 600.00, 120, 'shan_masala_mix_pack.jpg', 1, 7),
(3, 'Tapal Danedar Tea', 'Strong and flavorful tea leaves for a perfect cup of chai', 'Tapal Tea', 250.00, 110, 'tapal_danedar_tea.jpg', 1, 8),
(3, 'National Vermicelli (Seviyan)', 'Fine quality vermicelli for making sweet and savory dishes', 'National Foods', 70.00, 95, 'national_vermicelli_seviyan.jpg', 1, 11),
(3, 'Nestlé Cerelac Wheat', 'Nutritious wheat-based baby food for infants', 'Nestlé Pakistan', 350.00, 130, 'cerelac_wheat.jpg', 1, 4),
(3, 'Shan Biryani Rice', 'Long-grain rice specifically crafted for biryani preparation', 'Shan Foods', 450.00, 70, 'shan_biryani_rice.jpg', 1, 12),
(3, 'Mitchells Tomato Ketchup', 'Classic tomato ketchup for a tangy flavor', 'Mitchells', 150.00, 85, 'mitchells_tomato_ketchup.jpg', 1, 3),
(3, 'Habib Cooking Salt', 'Pure and iodized cooking salt for daily use', 'Habib Salt', 50.00, 100, 'habib_cooking_salt.jpg', 1, 15),
(3, 'National Basmati Rice', 'Premium quality basmati rice for special occasions', 'National Foods', 600.00, 80, 'national_basmati_rice.jpg', 1, 14),
(3, 'Shan Vermicelli Kheer Mix', 'Convenient mix for preparing delicious vermicelli kheer', 'Shan Foods', 80.00, 120, 'shan_vermicelli_kheer_mix.jpg', 1, 6),
(3, 'Mehran Cooking Oil', 'Healthy cooking oil enriched with vitamins', 'Mehran Oil', 350.00, 95, 'mehran_cooking_oil.jpg', 1, 9),
(3, 'Kolson Macaroni', 'High-quality macaroni for a variety of pasta dishes', 'Kolson', 80.00, 110, 'kolson_macaroni.jpg', 1, 11),
(3, 'Rafhan Corn Flour', 'Premium quality corn flour for cooking and baking', 'Rafhan', 120.00, 80, 'rafhan_corn_flour.jpg', 1, 10),
(3, 'Shan Pulao Biryani Mix', 'Versatile mix for preparing flavorful pulao and biryani', 'Shan Foods', 200.00, 85, 'shan_pulao_biryani_mix.jpg', 1, 7),
(3, 'National Vermicelli Kheer Mix', 'Convenient mix for making delectable vermicelli kheer', 'National Foods', 100.00, 95, 'national_vermicelli_kheer_mix.jpg', 1, 8),
(3, 'Shan Qorma Masala', 'Spice mix for preparing rich and aromatic qorma', 'Shan Foods', 90.00, 70, 'shan_qorma_masala.jpg', 1, 12),
(3, 'Kolson Rice Flour', 'Finely ground rice flour for various culinary uses', 'Kolson', 60.00, 100, 'kolson_rice_flour.jpg', 1, 7);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(4, 'Surf Excel Detergent', 'Powerful laundry detergent for clean and fresh clothes', 'Unilever Pakistan', 500.00, 100, 'surf_excel_detergent.jpg', 1, 10),
(4, 'Harpic Toilet Cleaner', 'Effective toilet cleaner for maintaining hygiene', 'Reckitt Benckiser Pakistan', 120.00, 150, 'harpic_toilet_cleaner.jpg', 1, 5),
(4, 'National Dishwashing Liquid', 'Gentle yet powerful dishwashing liquid for clean utensils', 'National Foods', 80.00, 80, 'national_dishwashing_liquid.jpg', 1, 6),
(4, 'Rooh Afza Liquid Detergent', 'Liquid detergent for convenient laundry washing', 'Hamdard Pakistan', 45.00, 90, 'rooh_afza_liquid_detergent.jpg', 1, 9),
(4, 'Dettol Hand Wash', 'Antibacterial hand wash for germ protection', 'Reckitt Benckiser Pakistan', 120.00, 120, 'dettol_hand_wash.jpg', 1, 7),
(4, 'National Glass Cleaner', 'Streak-free glass cleaner for crystal-clear surfaces', 'National Foods', 90.00, 110, 'national_glass_cleaner.jpg', 1, 8),
(4, 'Shan Dishwashing Bar', 'Powerful dishwashing bar for tough grease removal', 'Shan Foods', 40.00, 95, 'shan_dishwashing_bar.jpg', 1, 11),
(4, 'Odonil Air Freshener', 'Long-lasting air freshener for a pleasant environment', 'Dabur Pakistan', 150.00, 130, 'odonil_air_freshener.jpg', 1, 4),
(4, 'Nestlé Pure Life Water', 'Purified drinking water for staying hydrated', 'Nestlé Pakistan', 50.00, 70, 'nestle_pure_life_water.jpg', 1, 12),
(4, 'Hemani Surface Disinfectant Spray', 'Disinfectant spray for killing germs on surfaces', 'Hemani Herbals', 200.00, 85, 'hemani_surface_disinfectant_spray.jpg', 1, 3),
(4, 'Comfort Fabric Softener', 'Fabric softener for soft and fragrant laundry', 'Unilever Pakistan', 180.00, 105, 'comfort_fabric_softener.jpg', 1, 15),
(4, 'Mr. Brasso Metal Polish', 'Metal polish for shining and protecting metal surfaces', 'Reckitt Benckiser Pakistan', 80.00, 100, 'mr_brasso_metal_polish.jpg', 1, 14),
(4, 'Cif Cream Cleaner', 'Versatile cream cleaner for various surfaces', 'Unilever Pakistan', 70.00, 120, 'cif_cream_cleaner.jpg', 1, 6),
(4, 'National Floor Cleaner', 'Floor cleaner for a sparkling and clean floor', 'National Foods', 100.00, 75, 'national_floor_cleaner.jpg', 1, 9),
(4, 'Kleenex Facial Tissues', 'Soft facial tissues for everyday use', 'Kimberly-Clark Pakistan', 120.00, 110, 'kleenex_facial_tissues.jpg', 1, 11),
(4, 'Ariel Laundry Detergent', 'High-efficiency laundry detergent for tough stains', 'Procter & Gamble Pakistan', 350.00, 95, 'ariel_laundry_detergent.jpg', 1, 8),
(4, 'Shield Hand Sanitizer', 'Alcohol-based hand sanitizer for on-the-go protection', 'Shield Corporation', 60.00, 100, 'shield_hand_sanitizer.jpg', 1, 7),
(4, 'Dalda Cooking Oil', 'Vegetable cooking oil for everyday culinary use', 'Dalda Foods', 300.00, 95, 'dalda_cooking_oil.jpg', 1, 8),
(4, 'Brite Glass Cleaner', 'Foam-based glass cleaner for easy and effective cleaning', 'Reckitt Benckiser Pakistan', 120.00, 75, 'brite_glass_cleaner.jpg', 1, 10),
(4, 'National Toilet Paper Roll', 'Soft and absorbent toilet paper for personal hygiene', 'National Foods', 80.00, 120, 'national_toilet_paper_roll.jpg', 1, 7),
(4, 'Shield Floor Cleaner', 'Floor cleaner for removing dirt and stains', 'Shield Corporation', 150.00, 80, 'shield_floor_cleaner.jpg', 1, 9);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(5, 'J.', 'Embroidered Lawn Suit', 'Junaid Jamshed', 4500.00, 100, 'j_embroidered_lawn_suit.jpg', 1, 10),
(5, 'Alkaram Studio', 'Digital Printed Kurti', 'Alkaram Studio', 2500.00, 150, 'alkaram_digital_printed_kurti.jpg', 1, 5),
(5, 'Gul Ahmed', 'Unstitched Cambric Fabric', 'Gul Ahmed', 3000.00, 80, 'gul_ahmed_unstitched_cambric_fabric.jpg', 1, 6),
(5, 'Khaadi', 'Pret Wear Ready-to-Wear Kurta', 'Khaadi', 4500.00, 90, 'khaadi_pret_wear_kurta.jpg', 1, 9),
(5, 'Sapphire', 'Embroidered Chiffon Saree', 'Sapphire', 6500.00, 120, 'sapphire_embroidered_chiffon_saree.jpg', 1, 7),
(5, 'Nishat Linen', 'Printed Lawn Shirt', 'Nishat Linen', 2800.00, 110, 'nishat_linen_printed_lawn_shirt.jpg', 1, 8),
(5, 'Bonanza Satrangi', 'Woolen Shawl', 'Bonanza Satrangi', 1800.00, 95, 'bonanza_satrangi_woolen_shawl.jpg', 1, 11),
(5, 'Sana Safinaz', 'Luxury Pret Stitched Dress', 'Sana Safinaz', 8500.00, 130, 'sana_safinaz_luxury_pret_stitched_dress.jpg', 1, 4),
(5, 'Charizma', 'Embroidered Velvet Shawl', 'Charizma', 3500.00, 70, 'charizma_embroidered_velvet_shawl.jpg', 1, 12),
(5, 'Warda', 'Printed Linen Shirt and Dupatta', 'Warda', 3200.00, 85, 'warda_printed_linen_shirt_and_dupatta.jpg', 1, 3),
(5, 'Ethnic by Outfitters', 'Casual Wear Denim Jeans', 'Ethnic by Outfitters', 2500.00, 105, 'ethnic_by_outfitters_casual_wear_denim_jeans.jpg', 1, 15),
(5, 'Generation', 'Linen Blend Embroidered Suit', 'Generation', 4000.00, 100, 'generation_linen_blend_embroidered_suit.jpg', 1, 14),
(5, 'ChenOne', 'Formal Embroidered Lawn Suit', 'ChenOne', 5000.00, 75, 'chenone_formal_embroidered_lawn_suit.jpg', 1, 9),
(5, 'Cambridge', 'Mens Casual Shirt', 'Cambridge', 1800.00, 110, 'cambridge_mens_casual_shirt.jpg', 1, 11),
(5, 'Gul Warun', 'Embroidered Velvet Shawl', 'Gul Warun', 2800.00, 60, 'gul_warun_embroidered_velvet_shawl.jpg', 1, 14),
(5, 'Junaid Jamshed', 'Mens Unstitched Fabric', 'Junaid Jamshed', 3500.00, 80, 'jj_mens_unstitched_fabric.jpg', 1, 16),
(5, 'Outfitters', 'Casual Mens T-Shirt', 'Outfitters', 1200.00, 95, 'outfitters_casual_mens_tshirt.jpg', 1, 7),
(5, 'Sapphire', 'Luxury Pret Womens Kurti', 'Sapphire', 4000.00, 120, 'sapphire_luxury_pret_womens_kurti.jpg', 1, 10),
(5, 'Kayseria', 'Embroidered Lawn Suit', 'Kayseria', 4800.00, 80, 'kayseria_embroidered_lawn_suit.jpg', 1, 12),
(5, 'Levis', 'Mens Slim Fit Jeans', 'Levis', 2500.00, 90, 'levis_mens_slim_fit_jeans.jpg', 1, 8),
(5, 'Warda', 'Embroidered Khaddar Suit', 'Warda', 3800.00, 100, 'warda_embroidered_khaddar_suit.jpg', 1, 9);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(6, 'Cambridge', 'Mens Formal Shirt', 'Cambridge', 2500.00, 100, 'cambridge_mens_formal_shirt.jpg', 1, 10),
(6, 'Outfitters', 'Mens Denim Jeans', 'Outfitters', 3500.00, 120, 'outfitters_mens_denim_jeans.jpg', 1, 5),
(6, 'Levis', 'Mens Casual T-Shirt', 'Levis', 1200.00, 80, 'levis_mens_casual_tshirt.jpg', 1, 6),
(6, 'J.', 'Mens Kurta', 'Junaid Jamshed', 3000.00, 90, 'j_mens_kurta.jpg', 1, 9),
(6, 'Bonanza Satrangi', 'Mens Unstitched Fabric', 'Bonanza Satrangi', 1800.00, 110, 'bonanza_satrangi_mens_unstitched_fabric.jpg', 1, 7),
(6, 'Sapphire', 'Mens Casual Shirt', 'Sapphire', 2000.00, 95, 'sapphire_mens_casual_shirt.jpg', 1, 8),
(6, 'Ethnic by Outfitters', 'Mens Kurta Shalwar', 'Ethnic by Outfitters', 2800.00, 115, 'ethnic_by_outfitters_mens_kurta_shalwar.jpg', 1, 11),
(6, 'Gul Ahmed', 'Mens Polo Shirt', 'Gul Ahmed', 1500.00, 100, 'gul_ahmed_mens_polo_shirt.jpg', 1, 14),
(6, 'Nishat Linen', 'Mens Waistcoat', 'Nishat Linen', 3500.00, 75, 'nishat_linen_mens_waistcoat.jpg', 1, 9),
(6, 'Stoneage', 'Mens Slim Fit Jeans', 'Stoneage', 2800.00, 105, 'stoneage_mens_slim_fit_jeans.jpg', 1, 12),
(6, 'J.', 'Mens Suit', 'Junaid Jamshed', 8000.00, 90, 'j_mens_suit.jpg', 1, 15),
(6, 'Wardrobe by Rana Noman', 'Mens Sherwani', 'Wardrobe by Rana Noman', 12000.00, 80, 'wardrobe_by_rana_noman_mens_sherwani.jpg', 1, 9),
(6, 'Breakout', 'Mens Hoodie', 'Breakout', 2000.00, 95, 'breakout_mens_hoodie.jpg', 1, 11),
(6, 'Edenrobe', 'Mens Formal Trousers', 'Edenrobe', 1800.00, 120, 'edenrobe_mens_formal_trousers.jpg', 1, 8),
(6, 'Stylo', 'Mens Formal Shoes', 'Stylo', 2500.00, 60, 'stylo_mens_formal_shoes.jpg', 1, 14),
(6, 'Borjan', 'Mens Casual Sneakers', 'Borjan', 3000.00, 100, 'borjan_mens_casual_sneakers.jpg', 1, 10),
(6, 'ChenOne', 'Mens Dress Shirt', 'ChenOne', 2200.00, 95, 'chenone_mens_dress_shirt.jpg', 1, 8),
(6, 'Junaid Jamshed', 'Mens Denim Jacket', 'Junaid Jamshed', 4500.00, 70, 'jj_mens_denim_jacket.jpg', 1, 12),
(6, 'Breakout', 'Mens Casual Shorts', 'Breakout', 1200.00, 85, 'breakout_mens_casual_shorts.jpg', 1, 7),
(6, 'Gul Ahmed', 'Mens Shalwar Kameez', 'Gul Ahmed', 3500.00, 100, 'gul_ahmed_mens_shalwar_kameez.jpg', 1, 9);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(7, 'Khaadi', 'Embroidered Lawn Suit', 'Khaadi', 5500.00, 100, 'khaadi_embroidered_lawn_suit.jpg', 1, 10),
(7, 'Gul Ahmed', 'Pret Wear Ready-to-Wear Kurta', 'Gul Ahmed', 4800.00, 150, 'gul_ahmed_pret_wear_kurta.jpg', 1, 5),
(7, 'J.', 'Unstitched Fabric', 'Junaid Jamshed', 3500.00, 80, 'j_unstitched_fabric.jpg', 1, 6),
(7, 'Sapphire', 'Luxury Pret Stitched Dress', 'Sapphire', 7500.00, 90, 'sapphire_luxury_pret_stitched_dress.jpg', 1, 9),
(7, 'Nishat Linen', 'Printed Lawn Shirt and Dupatta', 'Nishat Linen', 3200.00, 120, 'nishat_linen_printed_lawn_shirt_and_dupatta.jpg', 1, 7),
(7, 'Ethnic by Outfitters', 'Casual Wear Womens Kurti', 'Ethnic by Outfitters', 2800.00, 110, 'ethnic_by_outfitters_casual_wear_womens_kurti.jpg', 1, 8),
(7, 'Bonanza Satrangi', 'Embroidered Chiffon Saree', 'Bonanza Satrangi', 6500.00, 95, 'bonanza_satrangi_embroidered_chiffon_saree.jpg', 1, 11),
(7, 'Sana Safinaz', 'Embroidered Silk Suit', 'Sana Safinaz', 8800.00, 130, 'sana_safinaz_embroidered_silk_suit.jpg', 1, 4),
(7, 'Warda', 'Printed Lawn Suit', 'Warda', 4200.00, 70, 'warda_printed_lawn_suit.jpg', 1, 12),
(7, 'Alkaram Studio', 'Digital Printed Kurti', 'Alkaram Studio', 2500.00, 85, 'alkaram_digital_printed_kurti.jpg', 1, 3),
(7, 'Limelight', 'Womens Casual Shirt', 'Limelight', 1800.00, 100, 'limelight_womens_casual_shirt.jpg', 1, 15),
(7, 'ChenOne', 'Formal Embroidered Lawn Suit', 'ChenOne', 5000.00, 100, 'chenone_formal_embroidered_lawn_suit.jpg', 1, 14),
(7, 'Generation', 'Linen Blend Embroidered Suit', 'Generation', 4500.00, 75, 'generation_linen_blend_embroidered_suit.jpg', 1, 9),
(7, 'Maria B.', 'Luxury Pret Womens Kurti', 'Maria B.', 6800.00, 110, 'maria_b_luxury_pret_womens_kurti.jpg', 1, 11),
(7, 'Kayseria', 'Embroidered Lawn Suit', 'Kayseria', 4800.00, 60, 'kayseria_embroidered_lawn_suit.jpg', 1, 14),
(7, 'Nadia Hussain', 'Casual Wear Womens Kurti', 'Nadia Hussain', 2200.00, 100, 'nadia_hussain_casual_wear_womens_kurti.jpg', 1, 9),
(7, 'Sapphire', 'Printed Silk Shirt', 'Sapphire', 3200.00, 95, 'sapphire_printed_silk_shirt.jpg', 1, 8),
(7, 'Cross Stitch', 'Embroidered Linen Suit', 'Cross Stitch', 3800.00, 70, 'cross_stitch_embroidered_linen_suit.jpg', 1, 11),
(7, 'Warda', 'Embroidered Khaddar Suit', 'Warda', 3600.00, 80, 'warda_embroidered_khaddar_suit.jpg', 1, 10),
(7, 'Gul Ahmed', 'Chiffon Dupatta', 'Gul Ahmed', 1500.00, 95, 'gul_ahmed_chiffon_dupatta.jpg', 1, 7);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(8, 'Hemani', 'Argan Oil for Hair', 'Hemani', 500.00, 100, 'hemani_argan_oil_for_hair.jpg', 1, 10),
(8, 'J. Fragrances', 'Rose Water Mist', 'Junaid Jamshed', 250.00, 150, 'j_fragrances_rose_water_mist.jpg', 1, 5),
(8, 'Olay', 'Regenerist Micro-Sculpting Cream', 'Olay', 3000.00, 80, 'olay_regenerist_micro_sculpting_cream.jpg', 1, 6),
(8, 'Himalaya Herbals', 'Neem Face Wash', 'Himalaya Herbals', 450.00, 90, 'himalaya_herbals_neem_face_wash.jpg', 1, 9),
(8, 'Ponds', 'White Beauty Cream', 'Ponds', 550.00, 120, 'ponds_white_beauty_cream.jpg', 1, 7),
(8, 'LOreal Paris', 'Revitalift Anti-Wrinkle Serum', 'LOreal Paris', 6000.00, 110, 'loreal_paris_revitalift_anti_wrinkle_serum.jpg', 1, 8),
(8, 'Nivea', 'Creme Moisturizer', 'Nivea', 400.00, 95, 'nivea_creme_moisturizer.jpg', 1, 11),
(8, 'Saeed Ghani', 'Natural Aloe Vera Gel', 'Saeed Ghani', 350.00, 130, 'saeed_ghani_natural_aloe_vera_gel.jpg', 1, 4),
(8, 'The Body Shop', 'Tea Tree Oil', 'The Body Shop', 1200.00, 70, 'the_body_shop_tea_tree_oil.jpg', 1, 12),
(8, 'Garnier', 'Micellar Cleansing Water', 'Garnier', 500.00, 85, 'garnier_micellar_cleansing_water.jpg', 1, 3),
(8, 'MAC Cosmetics', 'Studio Fix Fluid Foundation', 'MAC Cosmetics', 4500.00, 100, 'mac_cosmetics_studio_fix_fluid_foundation.jpg', 1, 10),
(8, 'Maybelline', 'Fit Me Concealer', 'Maybelline', 1200.00, 150, 'maybelline_fit_me_concealer.jpg', 1, 5),
(8, 'Dove', 'Intensive Repair Shampoo', 'Dove', 300.00, 80, 'dove_intensive_repair_shampoo.jpg', 1, 6),
(8, 'Lakme', 'Absolute Matte Mousse Lip Color', 'Lakme', 800.00, 90, 'lakme_absolute_matte_mousse_lip_color.jpg', 1, 9),
(8, 'Revlon', 'Colorstay Foundation', 'Revlon', 2500.00, 120, 'revlon_colorstay_foundation.jpg', 1, 7),
(8, 'Schwarzkopf', 'Gliss Hair Repair Conditioner', 'Schwarzkopf', 600.00, 110, 'schwarzkopf_gliss_hair_repair_conditioner.jpg', 1, 8),
(8, 'Vaseline', 'Intensive Care Deep Restore Lotion', 'Vaseline', 350.00, 95, 'vaseline_intensive_care_deep_restore_lotion.jpg', 1, 11),
(8, 'Neutrogena', 'Hydro Boost Water Gel', 'Neutrogena', 1200.00, 100, 'neutrogena_hydro_boost_water_gel.jpg', 1, 14),
(8, 'Oriflame', 'The One 5-in-1 Wonder Lash Mascara', 'Oriflame', 900.00, 60, 'oriflame_the_one_5_in_1_wonder_lash_mascara.jpg', 1, 14),
(8, 'Palmolive', 'Aroma Therapy Shower Gel', 'Palmolive', 350.00, 95, 'palmolive_aroma_therapy_shower_gel.jpg', 1, 7);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(9, 'Clinique', 'Dramatically Different Moisturizing Lotion+', 'Clinique', 3500.00, 100, 'clinique_dramatically_different_moisturizing_lotion.jpg', 1, 10),
(9, 'The Ordinary', 'Niacinamide 10% + Zinc 1% Serum', 'The Ordinary', 1200.00, 150, 'the_ordinary_niacinamide_serum.jpg', 1, 5),
(9, 'Neutrogena', 'Hydro Boost Water Gel', 'Neutrogena', 1500.00, 80, 'neutrogena_hydro_boost_water_gel.jpg', 1, 6),
(9, 'Kiehls', 'Midnight Recovery Concentrate', 'Kiehls', 5500.00, 90, 'kiehls_midnight_recovery_concentrate.jpg', 1, 9),
(9, 'La Roche-Posay', 'Anthelios Melt-in Milk Sunscreen', 'La Roche-Posay', 3000.00, 120, 'la_roche_posay_anthelios_sunscreen.jpg', 1, 7),
(9, 'The Body Shop', 'Vitamin E Overnight Serum-in-Oil', 'The Body Shop', 1800.00, 110, 'the_body_shop_vitamin_e_serum_in_oil.jpg', 1, 8),
(9, 'Garnier', 'SkinActive Micellar Cleansing Water', 'Garnier', 500.00, 95, 'garnier_skinactive_micellar_cleansing_water.jpg', 1, 11),
(9, 'Dermalogica', 'Daily Microfoliant Exfoliator', 'Dermalogica', 4500.00, 130, 'dermalogica_daily_microfoliant_exfoliator.jpg', 1, 4),
(9, 'Bioderma', 'Sensibio H2O Micellar Water', 'Bioderma', 1200.00, 70, 'bioderma_sensibio_h2o_micellar_water.jpg', 1, 12),
(9, 'Paulas Choice', 'Skin Perfecting 2% BHA Liquid Exfoliant', 'Paulas Choice', 2800.00, 85, 'paulas_choice_bha_liquid_exfoliant.jpg', 1, 3),
(9, 'Cetaphil', 'Gentle Skin Cleanser', 'Cetaphil', 800.00, 100, 'cetaphil_gentle_skin_cleanser.jpg', 1, 10),
(9, 'Estée Lauder', 'Advanced Night Repair Serum', 'Estée Lauder', 6500.00, 150, 'estee_lauder_advanced_night_repair_serum.jpg', 1, 5),
(9, 'Aveeno', 'Positively Radiant Daily Moisturizer', 'Aveeno', 1800.00, 80, 'aveeno_positively_radiant_moisturizer.jpg', 1, 6),
(9, 'CeraVe', 'Hydrating Cleanser', 'CeraVe', 1200.00, 95, 'cerave_hydrating_cleanser.jpg', 1, 9),
(9, 'Murad', 'Retinol Youth Renewal Night Cream', 'Murad', 5000.00, 110, 'murad_retinol_youth_renewal_night_cream.jpg', 1, 7),
(9, 'Olay', 'Regenerist Retinol 24 Night Moisturizer', 'Olay', 3500.00, 95, 'olay_regenrist_retinol_24_night_moisturizer.jpg', 1, 11),
(9, 'Kiehls', 'Ultra Facial Cream', 'Kiehls', 2800.00, 100, 'kiehls_ultra_facial_cream.jpg', 1, 14),
(9, 'Simple', 'Kind to Skin Cleansing Wipes', 'Simple', 300.00, 60, 'simple_cleansing_wipes.jpg', 1, 14),
(9, 'Caudalie', 'Vinoperfect Radiance Serum', 'Caudalie', 4500.00, 80, 'caudalie_vinoperfect_radiance_serum.jpg', 1, 9),
(9, 'Mario Badescu', 'Drying Lotion', 'Mario Badescu', 1200.00, 100, 'mario_badescu_drying_lotion.jpg', 1, 8),
(9, 'Bio-Oil', 'Skincare Oil', 'Bio-Oil', 900.00, 95, 'bio_oil_skincare_oil.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(10, 'Herbal Essences', 'Argan Oil of Morocco Shampoo', 'Herbal Essences', 500.00, 100, 'herbal_essences_argan_oil_of_morocco_shampoo.jpg', 1, 10),
(10, 'Pantene', 'Pro-V Smooth & Silky Conditioner', 'Pantene', 250.00, 150, 'pantene_pro_v_smooth_and_silky_conditioner.jpg', 1, 5),
(10, 'Dove', 'Intensive Repair Hair Mask', 'Dove', 300.00, 80, 'dove_intensive_repair_hair_mask.jpg', 1, 6),
(10, 'LOreal Paris', 'Elvive Total Repair 5 Hair Oil', 'LOreal Paris', 450.00, 90, 'loreal_paris_elvive_total_repair_5_hair_oil.jpg', 1, 9),
(10, 'Garnier', 'Fructis Sleek & Shine Shampoo', 'Garnier', 550.00, 120, 'garnier_fructis_sleek_and_shine_shampoo.jpg', 1, 7),
(10, 'Head & Shoulders', 'Anti-Dandruff Shampoo', 'Head & Shoulders', 1200.00, 110, 'head_and_shoulders_anti_dandruff_shampoo.jpg', 1, 8),
(10, 'Moroccanoil', 'Treatment Original Hair Oil', 'Moroccanoil', 1800.00, 95, 'moroccanoil_treatment_original_hair_oil.jpg', 1, 11),
(10, 'Tresemmé', 'Keratin Smooth Heat Protection Spray', 'Tresemmé', 350.00, 130, 'tresemme_keratin_smooth_heat_protection_spray.jpg', 1, 4),
(10, 'Schwarzkopf', 'BC Bonacure Color Freeze Shampoo', 'Schwarzkopf', 1200.00, 70, 'schwarzkopf_bc_bonacure_color_freeze_shampoo.jpg', 1, 12),
(10, 'Herbal Essences', 'Bio:Renew Argan Oil Hair Mask', 'Herbal Essences', 800.00, 85, 'herbal_essences_biorenew_argan_oil_hair_mask.jpg', 1, 3),
(10, 'OGX', 'Renewing Argan Oil of Morocco Conditioner', 'OGX', 1200.00, 100, 'ogx_renewing_argan_oil_of_morocco_conditioner.jpg', 1, 10),
(10, 'Aussie', '3 Minute Miracle Moist Deep Conditioner', 'Aussie', 650.00, 150, 'aussie_3_minute_miracle_moist_deep_conditioner.jpg', 1, 5),
(10, 'LOreal Paris', 'EverPure Sulfate-Free Color Care Shampoo', 'LOreal Paris', 1200.00, 80, 'loreal_paris_everpure_sulfate_free_color_care_shampoo.jpg', 1, 6),
(10, 'Matrix', 'Biolage Colorlast Shampoo', 'Matrix', 2500.00, 95, 'matrix_biolage_colorlast_shampoo.jpg', 1, 9),
(10, 'Pantene', 'Pro-V Repair & Protect Hair Oil', 'Pantene', 300.00, 110, 'pantene_pro_v_repair_and_protect_hair_oil.jpg', 1, 7),
(10, 'Dove', 'Nutritive Solutions Daily Moisture Shampoo', 'Dove', 350.00, 95, 'dove_nutritive_solutions_daily_moisture_shampoo.jpg', 1, 11),
(10, 'Kérastase', 'Nutritive Nectar Thermique Heat Protectant', 'Kérastase', 2800.00, 100, 'kerastase_nutritive_nectar_thermique_heat_protectant.jpg', 1, 14),
(10, 'Herbal Essences', 'Hello Hydration Moisturizing Conditioner', 'Herbal Essences', 500.00, 60, 'herbal_essences_hello_hydration_moisturizing_conditioner.jpg', 1, 14),
(10, 'Aveda', 'Damage Remedy Intensive Restructuring Treatment', 'Aveda', 4500.00, 80, 'aveda_damage_remedy_intensive_restructuring_treatment.jpg', 1, 9),
(10, 'Tresemmé', 'Botanique Nourish & Replenish Shampoo', 'Tresemmé', 1200.00, 100, 'tresemme_botanique_nourish_and_replenish_shampoo.jpg', 1, 8);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(11, 'MAC Cosmetics', 'Studio Fix Powder Plus Foundation', 'MAC Cosmetics', 3500.00, 100, 'mac_cosmetics_studio_fix_powder_plus_foundation.jpg', 1, 10),
(11, 'Maybelline', 'Instant Age Rewind Concealer', 'Maybelline', 1200.00, 150, 'maybelline_instant_age_rewind_concealer.jpg', 1, 5),
(11, 'Fenty Beauty', 'Pro Filtr Soft Matte Longwear Foundation', 'Fenty Beauty', 3000.00, 80, 'fenty_beauty_pro_filt_r_soft_matte_longwear_foundation.jpg', 1, 6),
(11, 'L.A. Girl', 'Pro Conceal HD Concealer', 'L.A. Girl', 450.00, 90, 'la_girl_pro_conceal_hd_concealer.jpg', 1, 9),
(11, 'Huda Beauty', 'Desert Dusk Eyeshadow Palette', 'Huda Beauty', 5500.00, 120, 'huda_beauty_desert_dusk_eyeshadow_palette.jpg', 1, 7),
(11, 'NYX Professional Makeup', 'Soft Matte Lip Cream', 'NYX Professional Makeup', 1100.00, 110, 'nyx_professional_makeup_soft_matte_lip_cream.jpg', 1, 8),
(11, 'Urban Decay', 'Naked Heat Eyeshadow Palette', 'Urban Decay', 7500.00, 95, 'urban_decay_naked_heat_eyeshadow_palette.jpg', 1, 11),
(11, 'Revlon', 'ColorStay Liquid Eyeliner', 'Revlon', 350.00, 130, 'revlon_colorstay_liquid_eyeliner.jpg', 1, 4),
(11, 'Anastasia Beverly Hills', 'Dipbrow Pomade', 'Anastasia Beverly Hills', 2800.00, 85, 'anastasia_beverly_hills_dipbrow_pomade.jpg', 1, 3),
(11, 'Essence', 'Lash Princess False Lash Effect Mascara', 'Essence', 500.00, 100, 'essence_lash_princess_false_lash_effect_mascara.jpg', 1, 10),
(11, 'Too Faced', 'Born This Way Matte Foundation', 'Too Faced', 3800.00, 150, 'too_faced_born_this_way_matte_foundation.jpg', 1, 5),
(11, 'ColourPop', 'Super Shock Highlighter', 'ColourPop', 1200.00, 80, 'colourpop_super_shock_highlighter.jpg', 1, 6),
(11, 'Wet n Wild', 'Photo Focus Foundation', 'Wet n Wild', 800.00, 95, 'wet_n_wild_photo_focus_foundation.jpg', 1, 9),
(11, 'Morphe', '35O Nature Glow Eyeshadow Palette', 'Morphe', 4500.00, 110, 'morphe_35o_nature_glow_eyeshadow_palette.jpg', 1, 7),
(11, 'Benefit Cosmetics', 'Hoola Matte Bronzer', 'Benefit Cosmetics', 2800.00, 100, 'benefit_cosmetics_hoola_matte_bronzer.jpg', 1, 14),
(11, 'Milani', 'Baked Blush', 'Milani', 500.00, 60, 'milani_baked_blush.jpg', 1, 14),
(11, 'Jeffree Star Cosmetics', 'Velour Liquid Lipstick', 'Jeffree Star Cosmetics', 4500.00, 80, 'jeffree_star_cosmetics_velour_liquid_lipstick.jpg', 1, 9),
(11, 'Kat Von D', 'Tattoo Liner', 'Kat Von D', 1200.00, 100, 'kat_von_d_tattoo_liner.jpg', 1, 8),
(11, 'Sephora Collection', 'Cream Lip Stain Liquid Lipstick', 'Sephora Collection', 800.00, 95, 'sephora_collection_cream_lip_stain_liquid_lipstick.jpg', 1, 11),
(11, 'Make Up For Ever', 'Ultra HD Invisible Cover Foundation', 'Make Up For Ever', 3500.00, 100, 'make_up_for_ever_ultra_hd_invisible_cover_foundation.jpg', 1, 14);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(12, 'Dettol', 'Anti-Bacterial Hand Wash', 'Dettol', 300.00, 100, 'dettol_anti_bacterial_hand_wash.jpg', 1, 10),
(12, 'Nivea', 'Fresh Natural Deodorant', 'Nivea', 200.00, 150, 'nivea_fresh_natural_deodorant.jpg', 1, 5),
(12, 'Colgate', 'Total Toothpaste', 'Colgate', 150.00, 80, 'colgate_total_toothpaste.jpg', 1, 6),
(12, 'Gillette', 'Mach3 Razor', 'Gillette', 400.00, 90, 'gillette_mach3_razor.jpg', 1, 9),
(12, 'Johnsons', 'Baby Shampoo', 'Johnsons', 250.00, 120, 'johnsons_baby_shampoo.jpg', 1, 7),
(12, 'Oral-B', 'Pro-Health Toothbrush', 'Oral-B', 100.00, 110, 'oral_b_pro_health_toothbrush.jpg', 1, 8),
(12, 'Vaseline', 'Petroleum Jelly', 'Vaseline', 120.00, 95, 'vaseline_petroleum_jelly.jpg', 1, 11),
(12, 'Dove', 'Beauty Bar Soap', 'Dove', 80.00, 130, 'dove_beauty_bar_soap.jpg', 1, 4),
(12, 'Garnier', 'Micellar Water Facial Cleanser', 'Garnier', 350.00, 70, 'garnier_micellar_water_facial_cleanser.jpg', 1, 12),
(12, 'Pampers', 'Baby Dry Diapers', 'Pampers', 600.00, 85, 'pampers_baby_dry_diapers.jpg', 1, 3),
(12, 'Head & Shoulders', '2-in-1 Shampoo and Conditioner', 'Head & Shoulders', 250.00, 100, 'head_and_shoulders_2_in_1_shampoo_and_conditioner.jpg', 1, 10),
(12, 'Secret', 'Invisible Solid Antiperspirant', 'Secret', 300.00, 150, 'secret_invisible_solid_antiperspirant.jpg', 1, 5),
(12, 'Cetaphil', 'Gentle Cleansing Bar', 'Cetaphil', 180.00, 80, 'cetaphil_gentle_cleansing_bar.jpg', 1, 6),
(12, 'Listerine', 'Cool Mint Antiseptic Mouthwash', 'Listerine', 400.00, 95, 'listerine_cool_mint_antiseptic_mouthwash.jpg', 1, 9),
(12, 'Axe', 'Phoenix Body Wash', 'Axe', 200.00, 110, 'axe_phoenix_body_wash.jpg', 1, 7),
(12, 'Crest', '3D White Toothpaste', 'Crest', 180.00, 95, 'crest_3d_white_toothpaste.jpg', 1, 11),
(12, 'Scholl', 'Velvet Smooth Express Pedi', 'Scholl', 1200.00, 100, 'scholl_velvet_smooth_express_pedi.jpg', 1, 14),
(12, 'Durex', 'Intense Orgasmic Gel', 'Durex', 500.00, 60, 'durex_intense_orgasmic_gel.jpg', 1, 14),
(12, 'Pears', 'Pure & Gentle Soap', 'Pears', 80.00, 80, 'pears_pure_and_gentle_soap.jpg', 1, 7),
(12, 'Lysol', 'Disinfecting Wipes', 'Lysol', 350.00, 95, 'lysol_disinfecting_wipes.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(13, 'Samsung', 'Galaxy S21 Ultra', 'Samsung', 150000.00, 100, 'samsung_galaxy_s21_ultra.jpg', 1, 10),
(13, 'Apple', 'MacBook Air', 'Apple', 180000.00, 150, 'apple_macbook_air.jpg', 1, 5),
(13, 'Sony', 'PlayStation 5', 'Sony', 80000.00, 80, 'sony_playstation_5.jpg', 1, 6),
(13, 'Dell', 'XPS 13 Laptop', 'Dell', 120000.00, 90, 'dell_xps_13_laptop.jpg', 1, 9),
(13, 'Samsung', 'QLED 4K Smart TV', 'Samsung', 120000.00, 120, 'samsung_qled_4k_smart_tv.jpg', 1, 7),
(13, 'Apple', 'iPhone 13 Pro', 'Apple', 120000.00, 110, 'apple_iphone_13_pro.jpg', 1, 8),
(13, 'Microsoft', 'Xbox Series X', 'Microsoft', 85000.00, 95, 'microsoft_xbox_series_x.jpg', 1, 11),
(13, 'LG', 'UltraGear Gaming Monitor', 'LG', 60000.00, 130, 'lg_ultragear_gaming_monitor.jpg', 1, 4),
(13, 'HP', 'Spectre x360 Laptop', 'HP', 130000.00, 70, 'hp_spectre_x360_laptop.jpg', 1, 12),
(13, 'Canon', 'EOS R5 Mirrorless Camera', 'Canon', 350000.00, 85, 'canon_eos_r5_mirrorless_camera.jpg', 1, 3),
(13, 'Sony', 'WH-1000XM4 Wireless Headphones', 'Sony', 25000.00, 100, 'sony_wh_1000xm4_wireless_headphones.jpg', 1, 10),
(13, 'Asus', 'ROG Strix Scar 17 Gaming Laptop', 'Asus', 200000.00, 150, 'asus_rog_strix_scar_17_gaming_laptop.jpg', 1, 5),
(13, 'Nikon', 'D850 DSLR Camera', 'Nikon', 250000.00, 80, 'nikon_d850_dslr_camera.jpg', 1, 6),
(13, 'LG', 'OLED C1 4K Smart TV', 'LG', 180000.00, 95, 'lg_oled_c1_4k_smart_tv.jpg', 1, 9),
(13, 'Microsoft', 'Surface Pro 7', 'Microsoft', 90000.00, 110, 'microsoft_surface_pro_7.jpg', 1, 7),
(13, 'Acer', 'Predator Helios 300 Gaming Laptop', 'Acer', 120000.00, 95, 'acer_predator_helios_300_gaming_laptop.jpg', 1, 11),
(13, 'Amazon', 'Kindle Paperwhite', 'Amazon', 12000.00, 100, 'amazon_kindle_paperwhite.jpg', 1, 14),
(13, 'Bose', 'QuietComfort 35 II Wireless Headphones', 'Bose', 30000.00, 60, 'bose_quietcomfort_35_ii_wireless_headphones.jpg', 1, 14),
(13, 'Lenovo', 'Legion 7 Gaming Laptop', 'Lenovo', 160000.00, 80, 'lenovo_legion_7_gaming_laptop.jpg', 1, 7),
(13, 'Fitbit', 'Versa 3 Smartwatch', 'Fitbit', 25000.00, 95, 'fitbit_versa_3_smartwatch.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(14, 'Samsung', 'Galaxy S21', 'Samsung', 100000.00, 100, 'samsung_galaxy_s21.jpg', 1, 10),
(14, 'Apple', 'iPhone 13', 'Apple', 120000.00, 150, 'apple_iphone_13.jpg', 1, 5),
(14, 'Xiaomi', 'Redmi Note 10 Pro', 'Xiaomi', 45000.00, 80, 'xiaomi_redmi_note_10_pro.jpg', 1, 6),
(14, 'OnePlus', '9 Pro', 'OnePlus', 95000.00, 90, 'oneplus_9_pro.jpg', 1, 9),
(14, 'Realme', '8 Pro', 'Realme', 35000.00, 120, 'realme_8_pro.jpg', 1, 7),
(14, 'Huawei', 'P40 Pro', 'Huawei', 80000.00, 110, 'huawei_p40_pro.jpg', 1, 8),
(14, 'Vivo', 'X60 Pro', 'Vivo', 55000.00, 95, 'vivo_x60_pro.jpg', 1, 11),
(14, 'Google', 'Pixel 6', 'Google', 90000.00, 130, 'google_pixel_6.jpg', 1, 4),
(14, 'OPPO', 'Find X3 Pro', 'OPPO', 100000.00, 70, 'oppo_find_x3_pro.jpg', 1, 12),
(14, 'Motorola', 'Edge 20 Pro', 'Motorola', 60000.00, 85, 'motorola_edge_20_pro.jpg', 1, 3),
(14, 'Sony', 'Xperia 1 III', 'Sony', 120000.00, 100, 'sony_xperia_1_iii.jpg', 1, 10),
(14, 'Nokia', '8.3 5G', 'Nokia', 65000.00, 150, 'nokia_8.3_5g.jpg', 1, 5),
(14, 'Infinix', 'Note 10', 'Infinix', 25000.00, 80, 'infinix_note_10.jpg', 1, 6),
(14, 'LG', 'Wing 5G', 'LG', 70000.00, 95, 'lg_wing_5g.jpg', 1, 9),
(14, 'BlackBerry', 'KEY2', 'BlackBerry', 90000.00, 110, 'blackberry_key2.jpg', 1, 7),
(14, 'TECNO', 'Camon 17 Pro', 'TECNO', 30000.00, 95, 'tecno_camon_17_pro.jpg', 1, 11),
(14, 'Asus', 'ROG Phone 5', 'Asus', 120000.00, 100, 'asus_rog_phone_5.jpg', 1, 14),
(14, 'Lenovo', 'Legion Phone Duel 2', 'Lenovo', 130000.00, 60, 'lenovo_legion_phone_duel_2.jpg', 1, 14),
(14, 'ZTE', 'Axon 30 Ultra', 'ZTE', 85000.00, 80, 'zte_axon_30_ultra.jpg', 1, 7),
(14, 'CAT', 'S62 Pro', 'CAT', 80000.00, 95, 'cat_s62_pro.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(15, 'Dell', 'XPS Desktop', 'Dell', 120000.00, 100, 'dell_xps_desktop.jpg', 1, 10),
(15, 'HP', 'Pavilion Gaming Desktop', 'HP', 80000.00, 150, 'hp_pavilion_gaming_desktop.jpg', 1, 5),
(15, 'Lenovo', 'IdeaCentre 5', 'Lenovo', 60000.00, 80, 'lenovo_ideacentre_5.jpg', 1, 6),
(15, 'Acer', 'Aspire TC', 'Acer', 50000.00, 90, 'acer_aspire_tc.jpg', 1, 9),
(15, 'Apple', 'iMac', 'Apple', 180000.00, 120, 'apple_imac.jpg', 1, 7),
(15, 'Asus', 'ROG Strix GA15', 'Asus', 100000.00, 110, 'asus_rog_strix_ga15.jpg', 1, 8),
(15, 'CyberPowerPC', 'Gamer Xtreme VR Gaming PC', 'CyberPowerPC', 90000.00, 95, 'cyberpowerpc_gamer_xtreme_vr_gaming_pc.jpg', 1, 11),
(15, 'MSI', 'Infinite S Gaming Desktop', 'MSI', 110000.00, 130, 'msi_infinite_s_gaming_desktop.jpg', 1, 4),
(15, 'Alienware', 'Aurora R10 Gaming Desktop', 'Alienware', 150000.00, 70, 'alienware_aurora_r10_gaming_desktop.jpg', 1, 12),
(15, 'Intel', 'NUC Mini PC', 'Intel', 45000.00, 85, 'intel_nuc_mini_pc.jpg', 1, 3),
(15, 'Skytech', 'Blaze II Gaming PC', 'Skytech', 75000.00, 100, 'skytech_blaze_ii_gaming_pc.jpg', 1, 10),
(15, 'ZOTAC', 'MEK Mini Gaming PC', 'ZOTAC', 65000.00, 150, 'zotac_mek_mini_gaming_pc.jpg', 1, 5),
(15, 'Corsair', 'One i160 Compact Gaming PC', 'Corsair', 130000.00, 80, 'corsair_one_i160_compact_gaming_pc.jpg', 1, 6),
(15, 'LG', 'UltraFine 5K Display', 'LG', 70000.00, 95, 'lg_ultrafine_5k_display.jpg', 1, 9),
(15, 'CybertronPC', 'Rhodium GTX Gaming PC', 'CybertronPC', 55000.00, 110, 'cybertronpc_rhodium_gtx_gaming_pc.jpg', 1, 7),
(15, 'ABS Gladiator', 'Gaming PC', 'ABS Gladiator', 85000.00, 95, 'abs_gladiator_gaming_pc.jpg', 1, 11),
(15, 'Digital Storm', 'Bolt X Gaming PC', 'Digital Storm', 120000.00, 100, 'digital_storm_bolt_x_gaming_pc.jpg', 1, 14),
(15, 'Skyforge', 'Skyblade 3.0 Gaming PC', 'Skyforge', 70000.00, 60, 'skyforge_skyblade_3.0_gaming_pc.jpg', 1, 14),
(15, 'Origin PC', 'Chronos Gaming PC', 'Origin PC', 160000.00, 80, 'origin_pc_chronos_gaming_pc.jpg', 1, 7),
(15, 'HP', 'EliteOne 800 All-in-One PC', 'HP', 90000.00, 95, 'hp_eliteone_800_all_in_one_pc.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(16, 'Sony', 'PlayStation 5', 'Sony', 80000.00, 100, 'sony_playstation_5.jpg', 1, 10),
(16, 'Microsoft', 'Xbox Series X', 'Microsoft', 85000.00, 150, 'microsoft_xbox_series_x.jpg', 1, 5),
(16, 'Nintendo', 'Switch', 'Nintendo', 45000.00, 80, 'nintendo_switch.jpg', 1, 6),
(16, 'Sony', 'PlayStation 4 Pro', 'Sony', 50000.00, 90, 'sony_playstation_4_pro.jpg', 1, 9),
(16, 'Microsoft', 'Xbox One X', 'Microsoft', 60000.00, 120, 'microsoft_xbox_one_x.jpg', 1, 7),
(16, 'Nintendo', 'Switch Lite', 'Nintendo', 30000.00, 110, 'nintendo_switch_lite.jpg', 1, 8),
(16, 'Sony', 'PlayStation 4 Slim', 'Sony', 40000.00, 95, 'sony_playstation_4_slim.jpg', 1, 11),
(16, 'Microsoft', 'Xbox One S', 'Microsoft', 35000.00, 130, 'microsoft_xbox_one_s.jpg', 1, 4),
(16, 'Nintendo', 'Wii U', 'Nintendo', 20000.00, 70, 'nintendo_wii_u.jpg', 1, 12),
(16, 'Sony', 'PlayStation Vita', 'Sony', 15000.00, 85, 'sony_playstation_vita.jpg', 1, 3),
(16, 'Microsoft', 'Xbox 360', 'Microsoft', 10000.00, 100, 'microsoft_xbox_360.jpg', 1, 10),
(16, 'Nintendo', '3DS XL', 'Nintendo', 25000.00, 150, 'nintendo_3ds_xl.jpg', 1, 5),
(16, 'Sony', 'PSP', 'Sony', 12000.00, 80, 'sony_psp.jpg', 1, 6),
(16, 'Microsoft', 'Xbox Series S', 'Microsoft', 60000.00, 95, 'microsoft_xbox_series_s.jpg', 1, 9),
(16, 'Nintendo', 'DS Lite', 'Nintendo', 18000.00, 110, 'nintendo_ds_lite.jpg', 1, 7),
(16, 'Sony', 'PlayStation 3', 'Sony', 30000.00, 95, 'sony_playstation_3.jpg', 1, 11),
(16, 'Microsoft', 'Xbox One', 'Microsoft', 40000.00, 100, 'microsoft_xbox_one.jpg', 1, 14),
(16, 'Nintendo', 'Wii', 'Nintendo', 15000.00, 60, 'nintendo_wii.jpg', 1, 14),
(16, 'Sony', 'PlayStation 2', 'Sony', 10000.00, 80, 'sony_playstation_2.jpg', 1, 7),
(16, 'Microsoft', 'Xbox', 'Microsoft', 12000.00, 95, 'microsoft_xbox.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(17, 'Rolex', 'Submariner', 'Rolex', 500000.00, 100, 'rolex_submariner.jpg', 1, 10),
(17, 'Omega', 'Seamaster Diver 300M', 'Omega', 300000.00, 150, 'omega_seamaster_diver_300m.jpg', 1, 5),
(17, 'Tag Heuer', 'Carrera', 'Tag Heuer', 150000.00, 80, 'tag_heuer_carrera.jpg', 1, 6),
(17, 'Seiko', 'Presage Cocktail Time', 'Seiko', 80000.00, 90, 'seiko_presage_cocktail_time.jpg', 1, 9),
(17, 'Citizen', 'Eco-Drive Chandler Field Watch', 'Citizen', 50000.00, 120, 'citizen_eco_drive_chandler_field_watch.jpg', 1, 7),
(17, 'Casio', 'G-Shock GA-2100', 'Casio', 20000.00, 110, 'casio_g_shock_ga_2100.jpg', 1, 8),
(17, 'Fossil', 'Gen 5 Carlyle Smartwatch', 'Fossil', 30000.00, 95, 'fossil_gen_5_carlyle_smartwatch.jpg', 1, 11),
(17, 'Tissot', 'Le Locle Powermatic 80', 'Tissot', 60000.00, 130, 'tissot_le_locle_powermatic_80.jpg', 1, 4),
(17, 'Bulova', 'Precisionist Chronograph', 'Bulova', 70000.00, 70, 'bulova_precisionist_chronograph.jpg', 1, 12),
(17, 'Panerai', 'Luminor Marina', 'Panerai', 250000.00, 85, 'panerai_luminor_marina.jpg', 1, 3),
(17, 'Longines', 'Master Collection', 'Longines', 120000.00, 100, 'longines_master_collection.jpg', 1, 10),
(17, 'Hamilton', 'Khaki Field Auto', 'Hamilton', 90000.00, 150, 'hamilton_khaki_field_auto.jpg', 1, 5),
(17, 'Emporio Armani', 'Connected Smartwatch', 'Emporio Armani', 40000.00, 80, 'emporio_armani_connected_smartwatch.jpg', 1, 6),
(17, 'Movado', 'Museum Classic', 'Movado', 100000.00, 95, 'movado_museum_classic.jpg', 1, 9),
(17, 'Michael Kors', 'Access Bradshaw Smartwatch', 'Michael Kors', 35000.00, 110, 'michael_kors_access_bradshaw_smartwatch.jpg', 1, 7),
(17, 'Citizen', 'Promaster Nighthawk', 'Citizen', 55000.00, 95, 'citizen_promaster_nighthawk.jpg', 1, 11),
(17, 'Skagen', 'Falster 3 Smartwatch', 'Skagen', 25000.00, 100, 'skagen_falster_3_smartwatch.jpg', 1, 14),
(17, 'Oris', 'Aquis Date', 'Oris', 90000.00, 60, 'oris_aquis_date.jpg', 1, 14),
(17, 'Timex', 'Weekender Chronograph', 'Timex', 15000.00, 80, 'timex_weekender_chronograph.jpg', 1, 7),
(17, 'Garmin', 'Forerunner 945', 'Garmin', 35000.00, 95, 'garmin_forerunner_945.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(18, 'Dyson', 'V11 Absolute Cordless Vacuum', 'Dyson', 80000.00, 100, 'dyson_v11_absolute_cordless_vacuum.jpg', 1, 10),
(18, 'Instant Pot', 'Duo Evo Plus', 'Instant Pot', 30000.00, 150, 'instant_pot_duo_evo_plus.jpg', 1, 5),
(18, 'Nespresso', 'Vertuo Coffee and Espresso Maker', 'Nespresso', 50000.00, 80, 'nespresso_vertuo_coffee_and_espresso_maker.jpg', 1, 6),
(18, 'SodaStream', 'Fizzi Sparkling Water Maker', 'SodaStream', 25000.00, 90, 'sodastream_fizzi_sparkling_water_maker.jpg', 1, 9),
(18, 'iRobot', 'Roomba 960 Robot Vacuum', 'iRobot', 70000.00, 120, 'irobot_roomba_960_robot_vacuum.jpg', 1, 7),
(18, 'Philips', 'Sonicare ProtectiveClean 6100 Electric Toothbrush', 'Philips', 15000.00, 110, 'philips_sonicare_protectiveclean_6100_electric_toothbrush.jpg', 1, 8),
(18, 'Keurig', 'K-Elite Single Serve Coffee Maker', 'Keurig', 40000.00, 95, 'keurig_k_elite_single_serve_coffee_maker.jpg', 1, 11),
(18, 'Dyson', 'Pure Cool Link Air Purifier', 'Dyson', 60000.00, 130, 'dyson_pure_cool_link_air_purifier.jpg', 1, 4),
(18, 'Ninja', 'Professional BL610 Blender', 'Ninja', 35000.00, 70, 'ninja_professional_bl610_blender.jpg', 1, 12),
(18, 'Samsung', 'SmartThings Hub', 'Samsung', 20000.00, 85, 'samsung_smartthings_hub.jpg', 1, 3),
(18, 'Cuisinart', 'Toaster Oven', 'Cuisinart', 12000.00, 100, 'cuisinart_toaster_oven.jpg', 1, 10),
(18, 'Bose', 'QuietComfort 35 II Wireless Headphones', 'Bose', 90000.00, 150, 'bose_quietcomfort_35_ii_wireless_headphones.jpg', 1, 5),
(18, 'Ring', 'Video Doorbell Pro', 'Ring', 30000.00, 80, 'ring_video_doorbell_pro.jpg', 1, 6),
(18, 'Amazon', 'Echo Show 8', 'Amazon', 25000.00, 95, 'amazon_echo_show_8.jpg', 1, 9),
(18, 'Brother', 'HL-L2380DW Laser Printer', 'Brother', 18000.00, 110, 'brother_hl_l2380dw_laser_printer.jpg', 1, 7),
(18, 'Dyson', 'Supersonic Hair Dryer', 'Dyson', 50000.00, 95, 'dyson_supersonic_hair_dryer.jpg', 1, 11),
(18, 'LG', 'OLED C1 Series TV', 'LG', 120000.00, 100, 'lg_oled_c1_series_tv.jpg', 1, 14),
(18, 'Google', 'Nest Learning Thermostat', 'Google', 70000.00, 60, 'google_nest_learning_thermostat.jpg', 1, 14),
(18, 'Anker', 'PowerPort Wireless Charger', 'Anker', 15000.00, 80, 'anker_powerport_wireless_charger.jpg', 1, 7),
(18, 'Nest', 'Cam Indoor Security Camera', 'Nest', 30000.00, 95, 'nest_cam_indoor_security_camera.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(19, 'Egyptian Cotton Sheets', 'Luxurious 1000 Thread Count', 'Egyptian Linens', 8000.00, 100, 'egyptian_cotton_sheets.jpg', 1, 10),
(19, 'Down Comforter', 'All-Season Hypoallergenic', 'Puredown', 15000.00, 150, 'down_comforter.jpg', 1, 5),
(19, 'Memory Foam Pillow', 'Orthopedic Contour Design', 'Sleep Innovations', 3000.00, 80, 'memory_foam_pillow.jpg', 1, 6),
(19, 'Weighted Blanket', 'Cotton with Glass Beads', 'YnM', 12000.00, 90, 'weighted_blanket.jpg', 1, 9),
(19, 'Mattress Topper', 'Gel-Infused Memory Foam', 'Lucid', 6000.00, 120, 'mattress_topper.jpg', 1, 7),
(19, 'Flannel Sheets', 'Heavyweight 100% Cotton', 'Pinzon', 4500.00, 110, 'flannel_sheets.jpg', 1, 8),
(19, 'Quilt Set', 'Soft Microfiber Bedspread', 'Bedsure', 4000.00, 95, 'quilt_set.jpg', 1, 11),
(19, 'Bed in a Bag', '8-Piece Comforter Set', 'AmazonBasics', 7000.00, 130, 'bed_in_a_bag.jpg', 1, 4),
(19, 'Duvet Cover Set', 'Premium Microfiber', 'Nestl Bedding', 5500.00, 70, 'duvet_cover_set.jpg', 1, 12),
(19, 'Pillowcases', 'Sateen Weave', 'California Design Den', 2000.00, 85, 'pillowcases.jpg', 1, 3),
(19, 'Bed Skirt', 'Elastic Dust Ruffle', 'Utopia Bedding', 1500.00, 100, 'bed_skirt.jpg', 1, 10),
(19, 'Throw Blanket', 'Soft and Cozy', 'Battilo', 2500.00, 150, 'throw_blanket.jpg', 1, 5),
(19, 'Bedspread', 'Lightweight Quilted Coverlet', 'Madison Park', 5000.00, 80, 'bedspread.jpg', 1, 6),
(19, 'Bamboo Sheets', 'Hypoallergenic Cooling Bedding', 'Cariloha', 9000.00, 95, 'bamboo_sheets.jpg', 1, 9),
(19, 'Electric Blanket', 'Soft Heat Micro-Plush', 'Sunbeam', 7000.00, 110, 'electric_blanket.jpg', 1, 11),
(19, 'Bed Pillows', 'Plush Gel Fiber', 'Beckham Hotel Collection', 3500.00, 95, 'bed_pillows.jpg', 1, 9),
(19, 'Cotton Blanket', 'Lightweight Breathable Throw', 'Utopia Bedding', 4000.00, 60, 'cotton_blanket.jpg', 1, 14),
(19, 'Mattress Protector', 'Waterproof and Hypoallergenic', 'SafeRest', 3000.00, 80, 'mattress_protector.jpg', 1, 14),
(19, 'Bedroom Curtains', 'Blackout Thermal Insulated', 'NICETOWN', 2500.00, 100, 'bedroom_curtains.jpg', 1, 7),
(19, 'Pillow Shams', 'Envelop Closure', 'NTBAY', 1800.00, 95, 'pillow_shams.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(20, 'Sofa Set', '3-Piece Modern Fabric Sectional', 'IKEA', 80000.00, 100, 'sofa_set.jpg', 1, 10),
(20, 'Dining Table', 'Solid Wood Rectangular Table', 'Habitt', 35000.00, 150, 'dining_table.jpg', 1, 5),
(20, 'Bed Frame', 'Upholstered Platform Bed', 'Chiniot Furniture', 45000.00, 80, 'bed_frame.jpg', 1, 6),
(20, 'Wardrobe', 'Sliding Door Closet', 'Master Offisys', 60000.00, 90, 'wardrobe.jpg', 1, 9),
(20, 'Coffee Table', 'Glass Top Center Table', 'Interwood', 12000.00, 120, 'coffee_table.jpg', 1, 7),
(20, 'Bookshelf', 'Wooden Bookcase', 'Index Furniture', 10000.00, 110, 'bookshelf.jpg', 1, 8),
(20, 'Recliner Chair', 'Leather Power Reclining Chair', 'Afydecor', 30000.00, 95, 'recliner_chair.jpg', 1, 11),
(20, 'Office Desk', 'L-Shaped Computer Desk', 'Office Plus', 25000.00, 130, 'office_desk.jpg', 1, 4),
(20, 'TV Stand', 'Floating Wall Mounted Console', 'Urban Ladder', 18000.00, 70, 'tv_stand.jpg', 1, 12),
(20, 'Dresser', '6-Drawer Double Dresser', 'Home Centre', 20000.00, 85, 'dresser.jpg', 1, 3),
(20, 'Accent Chair', 'Fabric Upholstered Armchair', 'The Home', 15000.00, 100, 'accent_chair.jpg', 1, 10),
(20, 'Outdoor Furniture Set', '4-Piece Patio Conversation Set', 'National Furniture', 45000.00, 150, 'outdoor_furniture_set.jpg', 1, 5),
(20, 'Bar Stools', 'Adjustable Height Swivel Barstools', 'Furniture Hub', 12000.00, 80, 'bar_stools.jpg', 1, 6),
(20, 'Side Table', 'Round End Table with Storage', 'Habitat', 6000.00, 95, 'side_table.jpg', 1, 9),
(20, 'Bedside Table', 'Wooden Nightstand', 'Interwood', 8000.00, 110, 'bedside_table.jpg', 1, 8),
(20, 'Chest of Drawers', '3-Drawer Storage Chest', 'IKEA', 10000.00, 95, 'chest_of_drawers.jpg', 1, 11),
(20, 'Kids Study Table', 'Height Adjustable Desk', 'Fun Station', 15000.00, 60, 'kids_study_table.jpg', 1, 14),
(20, 'Rocking Chair', 'Wooden Nursery Rocker', 'Chiniot Furniture', 18000.00, 80, 'rocking_chair.jpg', 1, 14),
(20, 'Corner Shelf', '5-Tier Wall Mount Shelf', 'Urban Ladder', 7000.00, 100, 'corner_shelf.jpg', 1, 7),
(20, 'Console Table', 'Entryway Hallway Table', 'Index Furniture', 10000.00, 95, 'console_table.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(21, 'Chandelier', 'Crystal Pendant Lighting', 'Fos Lighting', 50000.00, 100, 'chandelier.jpg', 1, 10),
(21, 'Table Lamp', 'Modern Bedside Table Light', 'Philips', 15000.00, 150, 'table_lamp.jpg', 1, 5),
(21, 'Ceiling Fan with Light', '3-Blade LED Fan', 'Havells', 20000.00, 80, 'ceiling_fan_with_light.jpg', 1, 6),
(21, 'Floor Lamp', 'Adjustable Standing Lamp', 'IKEA', 12000.00, 90, 'floor_lamp.jpg', 1, 9),
(21, 'Wall Sconce', 'Vintage Industrial Wall Light', 'Wentworth', 8000.00, 120, 'wall_sconce.jpg', 1, 7),
(21, 'Pendant Light', 'Glass Globe Hanging Light', 'Fos Lighting', 10000.00, 110, 'pendant_light.jpg', 1, 8),
(21, 'LED Strip Lights', 'Color Changing Tape Lights', 'Philips Hue', 5000.00, 95, 'led_strip_lights.jpg', 1, 11),
(21, 'Desk Lamp', 'Swing Arm Architect Lamp', 'BenQ', 7000.00, 130, 'desk_lamp.jpg', 1, 4),
(21, 'Outdoor Wall Light', 'Black Metal Lantern', 'Kichler Lighting', 12000.00, 70, 'outdoor_wall_light.jpg', 1, 12),
(21, 'Smart Bulb', 'WiFi-Enabled Dimmable Bulb', 'TP-Link', 1500.00, 85, 'smart_bulb.jpg', 1, 3),
(21, 'Candle Holder', 'Metal Wall Sconce', 'Bouclair', 2500.00, 100, 'candle_holder.jpg', 1, 10),
(21, 'Flush Mount Ceiling Light', 'Contemporary Glass Fixture', 'Hudson Valley', 18000.00, 150, 'flush_mount_ceiling_light.jpg', 1, 5),
(21, 'Track Lighting', 'Adjustable Spotlight Kit', 'Globe Electric', 10000.00, 80, 'track_lighting.jpg', 1, 6),
(21, 'Lantern Pendant Light', 'Moroccan Style Hanging Lamp', 'Feiss', 15000.00, 95, 'lantern_pendant_light.jpg', 1, 9),
(21, 'Solar Garden Lights', 'Stainless Steel Pathway Lights', 'GIGALUMI', 3000.00, 110, 'solar_garden_lights.jpg', 1, 8),
(21, 'String Lights', 'Outdoor Patio String Lights', 'Brightown', 5000.00, 95, 'string_lights.jpg', 1, 11),
(21, 'Desk Organizer Lamp', 'LED Table Lamp with Organizer', 'LITOM', 8000.00, 60, 'desk_organizer_lamp.jpg', 1, 14),
(21, 'Crystal Floor Lamp', 'Elegant Standing Lamp', 'Brightech', 25000.00, 80, 'crystal_floor_lamp.jpg', 1, 14),
(21, 'Wall Mount Reading Light', 'Adjustable Bedside Lamp', 'Lightess', 6000.00, 100, 'wall_mount_reading_light.jpg', 1, 7),
(21, 'Himalayan Salt Lamp', 'Natural Crystal Salt Rock', 'Levoit', 4000.00, 95, 'himalayan_salt_lamp.jpg', 1, 11);
INSERT INTO ProductInformation (CategoryID, Prod_Name, Prod_Description, Prod_manufacturer, Prod_Price, Quantity, prodImage, isActive, NumberOfPoints)
VALUES
(22, 'Ballpoint Pens', 'Black Ink Retractable Pens', 'Pilot', 200.00, 100, 'ballpoint_pens.jpg', 1, 10),
(22, 'Notebooks', 'Hardcover Ruled Journals', 'Moleskine', 500.00, 150, 'notebooks.jpg', 1, 5),
(22, 'Mechanical Pencils', '0.7mm HB Lead Pencils', 'Uni-ball', 300.00, 80, 'mechanical_pencils.jpg', 1, 6),
(22, 'Sticky Notes', 'Assorted Neon Colors', 'Post-it', 150.00, 90, 'sticky_notes.jpg', 1, 9),
(22, 'Highlighters', 'Chisel Tip Assorted Colors', 'Sharpie', 250.00, 120, 'highlighters.jpg', 1, 7),
(22, 'Binder Clips', 'Assorted Sizes', 'Officemate', 100.00, 110, 'binder_clips.jpg', 1, 8),
(22, 'Whiteboard Markers', 'Dry Erase Assorted Colors', 'Expo', 120.00, 95, 'whiteboard_markers.jpg', 1, 11),
(22, 'Correction Tape', 'White Out Tape', 'BIC', 80.00, 130, 'correction_tape.jpg', 1, 4),
(22, 'Desk Organizer', 'Mesh Office Supplies Caddy', 'SimpleHouseware', 200.00, 70, 'desk_organizer.jpg', 1, 12),
(22, 'Index Cards', '3x5-Inch Ruled White Cards', 'Oxford', 50.00, 85, 'index_cards.jpg', 1, 3),
(22, 'Paper Clips', 'Vinyl Coated Assorted Colors', 'U Brands', 70.00, 100, 'paper_clips.jpg', 1, 10),
(22, 'Scissors', '8-Inch Titanium Multipurpose Shears', 'Westcott', 150.00, 150, 'scissors.jpg', 1, 5),
(22, 'Legal Pads', 'Yellow 8.5 x 11.75-Inch Pads', 'TOPS', 300.00, 80, 'legal_pads.jpg', 1, 6),
(22, 'File Folders', 'Assorted Colors Letter Size', 'AmazonBasics', 200.00, 95, 'file_folders.jpg', 1, 9),
(22, 'Pencil Sharpener', 'Electric Heavy Duty', 'X-ACTO', 100.00, 110, 'pencil_sharpener.jpg', 1, 8),
(22, 'Postage Stamps', 'Forever Stamps Roll', 'USPS', 500.00, 95, 'postage_stamps.jpg', 1, 11),
(22, 'Drawing Paper', '9x12-Inch Sketch Pad', 'Strathmore', 150.00, 60, 'drawing_paper.jpg', 1, 14),
(22, 'Ballpoint Pen Refills', 'Medium Point Black Ink', 'Cross', 30.00, 80, 'ballpoint_pen_refills.jpg', 1, 14),
(22, 'Desk Chair Mat', 'Clear Vinyl Floor Protector', 'Floortex', 1000.00, 100, 'desk_chair_mat.jpg', 1, 10),
(22, 'Rollerball Pens', 'Fine Point Black Ink Pens', 'Pentel', 250.00, 95, 'rollerball_pens.jpg', 1, 11);
---------------------junction
CREATE TABLE User_Products (
    userID INT,
    Prod_Id INT,
    PRIMARY KEY (userID, Prod_Id),
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);
INSERT INTO User_Products (userID, Prod_Id)
VALUES
(5, 120),
(11, 320),
(3, 45),
(9, 200),
(17, 80),
(6, 310),
(13, 150),
(7, 250),
(19, 370),
(2, 15),
(15, 270),
(14, 90),
(8, 330),
(10, 55),
(4, 180),
(12, 400),
(16, 120),
(1, 230),
(18, 40),
(20, 300),
(5, 100),
(11, 190),
(3, 370),
(9, 45),
(17, 180),
(6, 210),
(11, 150),
(7, 20),
(19, 420),
(2, 150);

----------------------junction
CREATE TABLE Product_InventoryJunction (
    Prod_Id INT,
    InventoryID INT,
    PRIMARY KEY (Prod_Id, InventoryID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
--------***************************************/////////////////////////////////////////Faizan s1.1
INSERT INTO Product_InventoryJunction (Prod_Id, InventoryID)
VALUES
    (1, 5),
    (23, 12),
    (156, 4),
    (220, 28),
    (85, 9),
    (342, 15),
    (112, 21),
    (400, 3),
    (56, 18),
    (198, 7),
    (305, 25),
    (78, 11),
    (420, 19),
    (180, 2),
    (33, 14),
    (270, 6),
    (123, 30),
    (390, 17),
    (5, 8),
    (255, 1);

CREATE TABLE ProductCategory (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    Prod_Category VARCHAR(255),
    TaxPercentage DECIMAL(5, 2),
    ReturnPolicyInfo TEXT,
    WarrantyInfo TEXT
    );
	INSERT INTO ProductCategory (Prod_Category, TaxPercentage, ReturnPolicyInfo, WarrantyInfo)
VALUES 
    ('Groceries', 5.0, 'No return policy', 'No warranty'),
    ('Breakfast & Snacks', 5.0, '15 days return policy', 'No warranty'),
    ('Food Staples', 7.5, '30 days return policy', 'No warranty'),
    ('Laundry & Household', 8.0, '30 days return policy', 'No warranty'),
    ('Clothes & Fashion', 12.0, '60 days return policy', 'No warranty'),
    ('Mens Clothes', 12.0, '60 days return policy', 'No warranty'),
    ('Womens Clothes' , 12.0, '60 days return policy', 'No warranty'),
    ('Health & Beauty', 8.0, '30 days return policy', 'No warranty'),
    ('Skin Care', 8.0, '30 days return policy', 'No warranty'),
    ('Hair Care', 8.0, '30 days return policy', 'No warranty'),
    ('Makeup', 8.0, '30 days return policy', 'No warranty'),
    ('Personal Care', 8.0, '30 days return policy', 'No warranty'),
    ('Electronics', 10.0, '15 days return policy', '1 year warranty'),
    ('Smart Phones', 10.0, '15 days return policy', '1 year warranty'),
    ('PCs', 10.0, '30 days return policy', '2 years warranty'),
    ('Gaming Consoles', 10.0, '15 days return policy', '1 year warranty'),
    ('Watches', 8.0, '30 days return policy', '1 year warranty'),
    ('Home & Lifestyle', 8.0, '30 days return policy', 'No warranty'),
    ('Bedding', 8.0, '30 days return policy', 'No warranty'),
    ('Furniture', 10.0, '60 days return policy', '2 years warranty'),
    ('Lighting', 8.0, '30 days return policy', '1 year warranty'),
    ('Stationary', 5.0, '15 days return policy', 'No warranty');


	CREATE TABLE Size (-------------------j=1
    SizeId INT IDENTITY(1,1) PRIMARY KEY,
    SizeValue VARCHAR(50),
    );
INSERT INTO Size (SizeValue)
VALUES
    ('Small'),
    ('Medium'),
    ('Large'),
    ('XL'),
    ('XXL'),
    ('36'),
    ('38'),
    ('40'),
    ('42'),
    ('44');
    

	------------------junction
CREATE TABLE ProductSize (
    Prod_Id INT,
    SizeId INT,
    PRIMARY KEY (Prod_Id, SizeId),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (SizeId) REFERENCES Size(SizeId)
);
INSERT INTO ProductSize (Prod_Id, SizeId)
VALUES
    (67, 1), (67, 2), (67, 3),
    (68, 4), (68, 5), (68, 6),
    (69, 7), (69, 8), (69, 9),
    (70, 1), (70, 2), (70, 3),
    (71, 4), (71, 5), (71, 6),
    (72, 7), (72, 8), (72, 9),
	(131, 10), (131, 1), (131, 2),
    (132, 3), (132, 4), (132, 5),
    (133, 6), (133, 7), (233, 8),
	(74, 9), (74, 10),
    (75, 1), (75, 2), (75, 3),
    (76, 4), (76, 5), (76, 6),
    (77, 7), (77, 8), (77, 9),
    (78, 1), (78, 2), (78, 3),
    (79, 4), (79, 5), (79, 6),
    (80, 7), (80, 8), (80, 9),(128, 1), (128, 2), (128, 3),
    (129, 4), (129, 5), (129, 6),
    (130, 7), (130, 8), (130, 9),
    (231, 10), (141, 1), (151, 2),
    (172, 3), (162, 4), (152, 5),
    (183, 6), (193, 7), (133, 8);
CREATE TABLE Color (------------------j=1
    ColorId INT IDENTITY(1,1) PRIMARY KEY,
    ColorValue VARCHAR(50)
);
INSERT INTO Color (ColorValue)
VALUES
    ('#FF0000'), -- Red
    ('#0000FF'), -- Blue
    ('#00FF00'), -- Green
    ('#FFFF00'), -- Yellow
    ('#000000'), -- Black
    ('#FFFFFF'), -- White
    ('#FFA500'), -- Orange
    ('#800080'), -- Purple
    ('#FFC0CB'), -- Pink
    ('#A52A2A'), -- Brown
    ('#808080'), -- Gray1
    ('#00FFFF'), -- Cyan
    ('#FF00FF'), -- Magenta
    ('#00FF00'), -- Lime
    ('#008080'), -- Teal
    ('#4B0082'), -- Indigo
    ('#EE82EE'), -- Violet
    ('#FFD700'), -- Gold
    ('#C0C0C0'), -- Silver
    ('#800000'); -- Maroon
---------------------junction
CREATE TABLE ProductColor (
    Prod_Id INT,
    ColorId INT,
    PRIMARY KEY (Prod_Id, ColorId),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (ColorId) REFERENCES Color(ColorId)
);
INSERT INTO ProductColor (Prod_Id, ColorId)
VALUES
    (167, 1), (267, 2), (67, 13),
    (68, 14), (68, 15), (68, 6),
    (69, 7), (69, 8), (69, 19),
    (70, 1), (70, 12), (70, 3),
    (71, 4), (71, 5), (71, 16),
    (72, 17), (72, 8), (72, 19),
	(131, 10), (131, 11), (131, 2),
    (132, 3), (132, 4), (132, 5),
    (133, 6), (133, 7), (133, 8),
	(74, 9), (74, 10),
    (75, 11), (75, 12), (75, 13),
    (76, 4), (76, 5), (76, 6),
    (77, 7), (77, 18), (77, 19),
    (78, 1), (78, 2), (78, 3),
    (79, 4), (79, 5), (79, 16),
    (80, 7), (80, 8), (80, 19),(128, 1), (128, 2), (128, 3),
    (129, 14), (129, 15), (129, 16),
    (130, 7), (130, 8), (130, 9),
    (231, 10), (231, 11), (231, 12),
    (232, 3), (232, 4), (232, 5),
    (233, 16), (233, 7), (233, 18);

CREATE TABLE ShoppingCart (-----------------------j=1
    cart_id INT  IDENTITY(1,1) PRIMARY KEY,
    sessionID INT,
    userID INT,
    FOREIGN KEY (sessionID) REFERENCES UserSessions(sessionID),
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID)
);

INSERT INTO ShoppingCart (cart_id,sessionID, userID)
VALUES
    (1,1, 1),
	(2,2, 2),
    (3,3, 3),
    (4,4, 4),
    (5,5, 5),
    (6,6, 6),
    (7,7, 7),
    (8,8, 8),
    (9,15, 9),
    (10,10, 10),
    (11,11, 11),
    (12,12, 12),
    (13,13, 13),
    (14,14, 14),
    (15,10, 15),
    (16,16, 16),
    (17,17, 17),
    (18,18, 18),
    (19,12, 19),
    (20,4, 20),
    (21,1, 21),
    (22,2, 22),
    (23,3, 23),
    (24,4, 24),
    (25,5, 25),
    (26,6, 22),
    (27,7, 27),
    (28,8, 28),
    (29,9, 29),
    (30,10, 30);

--------------------------junction
CREATE TABLE Cart_ProductJunctionParticular(
    cart_id INT,
    Prod_Id INT,
    per_product_price DECIMAL(10, 2),
    quantity INT,
	PRIMARY KEY (cart_id, Prod_Id),
    FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);

INSERT INTO Cart_ProductJunctionParticular (cart_id, Prod_Id, per_product_price, quantity)
VALUES
    (1, 25, 25.00, 3),
    (1, 105, 15.00, 2),
    (2, 200, 30.00, 1),
    (2, 315, 18.50, 4),
    (3, 75, 22.00, 2),
    (3, 420, 27.50, 3),
    (4, 150, 40.00, 1),
    (4, 50, 19.99, 2),
    (5, 275, 35.50, 3),
    (5, 385, 24.00, 1),
    (6, 100, 28.00, 2),
    (6, 200, 15.99, 3),
    (7, 325, 19.50, 1),
    (7, 410, 21.00, 4),
    (8, 50, 32.00, 3),
    (8, 75, 18.75, 2),
    (9, 150, 26.50, 1),
    (9, 200, 17.00, 3),
    (10, 300, 24.99, 2),
    (10, 405, 29.50, 4),
    (11, 75, 20.00, 1),
    (11, 150, 35.99, 2),
    (12, 250, 18.50, 3),
    (12, 350, 30.50, 1),
    (13, 175, 23.00, 2),
    (13, 250, 27.00, 3),
    (14, 325, 38.50, 1),
    (14, 50, 19.99, 2),
    (15, 100, 33.50, 3),
    (15, 175, 26.00, 1),
    (16, 200, 29.00, 2),
    (16, 350, 17.99, 3),
    (17, 325, 21.50, 1),
    (17, 275, 19.00, 4),
    (18, 50, 27.00, 3),
    (18, 300, 22.50, 2),
    (19, 100, 25.00, 1),
    (19, 275, 20.99, 3),
    (20, 350, 30.50, 2),
    (20, 150, 18.00, 4);
	select * from ShoppingCart
CREATE TABLE OrderInfo (----------------------------------j=1
    OrderID INT  IDENTITY(1,1) PRIMARY KEY,
    cart_id INT,
    FinalPrice DECIMAL(10, 2),
    PaymentID INT,
    OrderDate DateTime DEFAULT getdate(),
    OrderStatus BIT,
    DiscountApplied DECIMAL(5, 2),
    CityDeliveryFeeID INT,
    FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id),
    FOREIGN KEY (PaymentID) REFERENCES PaymentCentral(PaymentID),
    FOREIGN KEY (CityDeliveryFeeID) REFERENCES CityDeliveryFee(CityDeliveryFeeID)
);
INSERT INTO OrderInfo (cart_id, FinalPrice, PaymentID, OrderStatus, DiscountApplied, CityDeliveryFeeID)
VALUES
    (1, 120.50, 1, 1, 10.00, 1),
    (2, 75.00, 2, 1, 5.00, 2),
    (3, 200.25, 3, 1, 15.75, 1),
    (4, 90.75, 4, 1, 8.50, 3),
    (5, 150.20, 5, 1, 12.00, 2),
    (6, 180.00, 6, 1, 20.50, 1),
    (7, 50.25, 7, 1, 4.75, 3),
    (8, 110.80, 8, 1, 10.25, 2),
    (9, 95.50, 9, 1, 7.80, 1),
    (10, 120.75, 10, 1, 15.00, 3),
    (11, 130.00, 11, 1, 11.50, 2),
    (12, 85.25, 12, 1, 6.75, 1),
    (13, 180.50, 13, 1, 18.00, 3),
    (14, 200.75, 14, 1, 25.50, 2),
    (15, 70.00, 15, 1, 8.75, 1),
    (16, 115.25, 16, 1, 12.50, 3),
    (17, 95.80, 17, 1, 7.20, 2),
    (18, 150.20, 18, 1, 18.75, 1),
    (19, 110.50, 19, 1, 10.00, 3),
    (10, 160.75, 20, 1, 15.20, 2),
    (11, 75.25, 11, 1, 5.80, 1),
    (12, 130.50, 12, 1, 12.75, 3),
    (13, 90.80, 13, 1, 8.00, 2),
    (14, 140.00, 14, 1, 16.25, 1),
    (15, 105.25, 15, 1, 10.80, 3),
    (16, 125.75, 16, 1, 14.50, 2),
    (17, 80.00, 17, 1, 6.25, 1),
    (18, 95.25, 18, 1, 8.80, 3),
    (19, 120.50, 19, 1, 11.20, 2),
    (10, 110.75, 20, 1, 10.75, 1);

----------------------------junction
CREATE TABLE User_OrderJunction (
    userID INT,
    OrderID INT,
    PRIMARY KEY (userID, OrderID),
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);

CREATE TABLE PaymentCentral (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATETIME default getdate(),
    PaymentStatus BIT,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID)
);

INSERT INTO PaymentCentral (userID, Amount, PaymentStatus, PaymentMethod)
VALUES
    (1, 50.00, 1, 'Credit Card'),
    (2, 75.50, 0, 'PayPal'),
    (3, 120.25, 1, 'Debit Card'),
    (4, 30.00, 1, 'Bank Transfer'),
    (5, 90.75, 0, 'Credit Card'),
    (6, 55.50, 1, 'PayPal'),
    (7, 80.00, 0, 'Debit Card'),
    (8, 45.25, 1, 'Bank Transfer'),
    (9, 110.50, 1, 'Credit Card'),
    (10, 65.75, 0, 'PayPal'),
    (1, 95.25, 1, 'Debit Card'),
    (2, 40.00, 0, 'Bank Transfer'),  
    (3, 70.50, 1, 'Credit Card'),  
    (4, 85.75, 0, 'PayPal'), 
    (5, 120.00, 1, 'Debit Card'),
    (6, 50.25, 1, 'Bank Transfer'),
    (7, 60.50, 0, 'Credit Card'), 
    (8, 110.75, 1, 'PayPal'),  
    (9, 75.00, 0, 'Debit Card'), 
    (10, 95.25, 1, 'Bank Transfer'),
    (11, 130.50, 1, 'Credit Card'),
    (12, 45.75, 0, 'PayPal'),
    (13, 88.25, 1, 'Debit Card'),
    (14, 36.00, 1, 'Bank Transfer'),
    (15, 100.75, 0, 'Credit Card'),
    (16, 68.50, 1, 'PayPal'),
    (17, 78.00, 0, 'Debit Card'),
    (18, 55.25, 1, 'Bank Transfer'),
    (19, 92.50, 1, 'Credit Card'),
    (20, 62.75, 0, 'PayPal');

CREATE TABLE PaypalPayment (
    PayPalPaymentID INT  IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT REFERENCES PaymentCentral(PaymentID),
    PayPalEmail VARCHAR(255),
    PayPalAmount DECIMAL(10, 2),
    PayPalDate DATETIME default getdate(),
);
INSERT INTO PaypalPayment (PaymentID, PayPalEmail, PayPalAmount)
VALUES
    (1, 'john.doe@example.com', 25.00),
    (2, 'alice.smith@example.com', 50.50),
    (3, 'bob.jones@example.com', 75.25),
    (4, 'emma.white@example.com', 30.00),
    (5, 'james.miller@example.com', 45.75);
CREATE TABLE GatewayPayment (
    GatewayPaymentID INT  IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT REFERENCES PaymentCentral(PaymentID),
    PaymentGateway VARCHAR(50),
    GatewayAmount DECIMAL(10, 2),
    GatewayAccountNumber VARCHAR(50),
    GatewayDate DATETIME default getdate(),
);
INSERT INTO GatewayPayment (PaymentID, PaymentGateway, GatewayAmount, GatewayAccountNumber)
VALUES
    (5, 'JazzCash', 50.00, 'JAZZCASH123'),
    (6, 'Easypaisa', 75.50, 'EASYPAY456'),
    (7, 'JazzCash', 120.25, 'JAZZCASH789'),
    (8, 'Easypaisa', 30.00, 'EASYPAY1234'),
    (9, 'JazzCash', 90.75, 'JAZZCASH567'),
	(10, 'JazzCash', 95.75, 'JAZZCASH567');
CREATE TABLE CardPayment (
    CardPaymentID INT  IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT REFERENCES PaymentCentral(PaymentID),
    CardType VARCHAR(20),
    CardNumber VARCHAR(16),
    ExpiryDate DATE,
    CNICNumber VARCHAR(20),
    CVV VARCHAR(4),
    CardHolderName VARCHAR(100),
    BillingAddress VARCHAR(255),
    CardPaymentAmount DECIMAL(10, 2),
    CardPaymentDate DATETIME default getdate(),
);
INSERT INTO CardPayment (PaymentID, CardType, CardNumber, ExpiryDate, CNICNumber, CVV, CardHolderName, BillingAddress, CardPaymentAmount)
VALUES
    (11, 'Visa', '4111111111111111', '2023-01-01', '12345-6789123-4', '123', 'John Doe', '123 Main St, City', 75.50),
    (12, 'MasterCard', '5555555555554444', '2024-02-01', '98765-4321987-6', '456', 'Jane Smith', '456 Oak St, Town', 120.25),
    (13, 'American Express', '378282246310005', '2023-03-01', '56789-0123456-7', '789', 'Alice Johnson', '789 Elm St, Village', 30.00),
    (14, 'Discover', '6011111111111117', '2024-04-01', '34567-8901234-5', '234', 'Bob Brown', '567 Pine St, County', 90.75),
    (15, 'Visa', '4916111111111113', '2022-05-01', '45678-9012345-6', '567', 'Charlie Williams', '678 Birch St, Country', 55.50);

CREATE TABLE BankTransferPayment (
    BankTransferID INT  IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT REFERENCES PaymentCentral(PaymentID),
    BankName VARCHAR(50),
    AccountHolderName VARCHAR(100),
    AccountNumber VARCHAR(20),
    IBAN VARCHAR(34),
    TransferAmount DECIMAL(10, 2),
    TransferDate DATETIME default getdate(),
);
INSERT INTO BankTransferPayment (PaymentID, BankName, AccountHolderName, AccountNumber, IBAN, TransferAmount)
VALUES
    (16, 'Habib Bank Limited (HBL)', 'Ali Khan', '12345678', 'PK123456789012345678901234567890', 500.00),
    (17, 'Meezan Bank', 'Ayesha Ahmed', '98765432', 'PK987654321098765432109876543210', 750.50),
    (18, 'United Bank Limited (UBL)', 'Ahmed Siddiqui', '45678901', 'PK456789012345678901234567890123', 1200.25),
    (19, 'Askari Bank', 'Sara Khan', '78901234', 'PK789012345678901234567890123456', 300.00),
    (20, 'Faysal Bank', 'Imran Ali', '23456789', 'PK234567890123456789012345678901', 900.75);

CREATE TABLE CODPayment (
    CODPaymentID INT IDENTITY(1,1) PRIMARY KEY,
    PaymentID INT REFERENCES PaymentCentral(PaymentID),
    COD_Received BIT,
    COD_PaidAmount DECIMAL(10, 2),
    COD_PaidDate DATETIME default getdate(),
    COD_ReceiverName VARCHAR(100)
);
INSERT INTO CODPayment (PaymentID, COD_Received, COD_PaidAmount, COD_ReceiverName)
VALUES
    (21, 1, 50.00, 'Ali Khan'),
    (22, 0, 75.50, 'Sana Ahmed'),
    (23, 1, 120.25, 'Ahmed Hassan'),
    (24, 1, 30.00, 'Fatima Ali'),
    (25, 0, 90.75, 'Omar Malik');

CREATE TABLE UserSearchHistory (
    SearchID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT REFERENCES UserProfiles(userID),
    SearchText VARCHAR(255) NOT NULL,
    SearchTimestamp DateTime DEFAULT getdate()
);

INSERT INTO UserSearchHistory (userID, SearchText)
VALUES
    (1, 'Lawn Dresses'),
    (2, 'Smartphones'),
    (3, 'Summer Shoes'),
    (4, 'Healthy Recipes'),
    (5, 'Home Decor'),
    (1, 'Gaming Laptops'),
    (2, 'Fitness Workouts'),
    (3, 'Travel Destinations'),
    (4, 'Men''s Fashion Trends'),
    (5, 'Women''s Handbags'),
    (1, 'DIY Home Improvement'),
    (2, 'Latest Movie Releases'),
    (3, 'Tech Gadgets'),
    (4, 'Vegetarian Recipes'),
    (5, 'Pet Care Tips'),
    (1, 'Photography Techniques'),
    (2, 'Outdoor Adventure Gear'),
    (3, 'Budget Travel Tips'),
    (4, 'Healthy Smoothie Recipes'),
    (5, 'Fashion Accessories'),
    (1, 'Book Recommendations'),
    (2, 'Home Office Setup'),
    (3, 'Camping Essentials'),
    (4, 'Luxury Watches'),
    (5, 'Artificial Intelligence News'),
    (1, 'Vegan Cooking Ideas'),
    (2, 'DIY Gardening Projects'),
    (3, 'International Cuisine'),
    (4, 'Smart Home Devices'),
    (5, 'Fashionable Sneakers'),
    (1, 'Lawn Dresses'),
    (2, 'Smartphones'),
    (3, 'Summer Shoes'),
    (4, 'Healthy Recipes'),
    (5, 'Home Decor');

CREATE TABLE ProductIssues (-----------------------j=2
    IssueID INT IDENTITY(1,1) PRIMARY KEY,
    IssueType VARCHAR(50),
    Descriptions TEXT,
    Issuestatus VARCHAR(50),
    productIssueDate DATETIME DEFAULT getdate()
);
-- Insert data into ProductIssues table
INSERT INTO ProductIssues (IssueType, Descriptions, Issuestatus)
VALUES
    ('Defective', 'Product arrived damaged', 'Open'),
    ('Missing Parts', 'Some parts are missing', 'In Progress'),
    ('Wrong Item', 'Received the wrong item', 'Closed'),
    ('Quality Issue', 'Poor quality product', 'Open'),
    ('Shipping Delay', 'Package delayed in transit', 'In Progress'),
    ('Size Issue', 'Incorrect size delivered', 'Open'),
    ('Billing Error', 'Incorrect amount charged', 'Closed'),
    ('Cancellation Issue', 'Unable to cancel order', 'In Progress'),
    ('Return Refused', 'Return request refused', 'Closed'),
    ('Other', 'Unspecified issue', 'Open');
	select * from Product_ProductIssues;
INSERT INTO OrderProductIssues (OrderID, IssueID)
VALUES
    (24, 1), (25, 1), (26, 3), (22, 4), (25, 5),
    (26, 6), (27, 7), (28, 5), (32, 9), (10, 5);

INSERT INTO Product_ProductIssues (Prod_Id, IssueID)
VALUES
    (101, 1), (420, 2), (431, 1), (420, 4), (5, 5),
    (6, 6), (101, 7), (330, 8), (9, 5), (103, 10);

INSERT INTO ReturnExchange (OrderID, returnExchangeType, returnExchangeStatus, Descriptions)
VALUES
    (11, 'Exchange', 'Processing', 'Exchange request initiated'),
    (12, 'Return', 'Completed', 'Return completed successfully'),
    (13, 'Exchange', 'Pending Approval', 'Awaiting approval for exchange'),
    (19, 'Return', 'In Progress', 'Return in progress'),
    (15, 'Exchange', 'Completed', 'Exchange completed successfully'),
    (16, 'Return', 'Processing', 'Return request is being processed'),
    (11, 'Exchange', 'Pending Approval', 'Awaiting approval for exchange'),
    (18, 'Return', 'Completed', 'Return completed successfully'),
    (19, 'Exchange', 'Processing', 'Exchange request initiated'),
    (20, 'Return', 'In Progress', 'Return in progress');

INSERT INTO Product_ReturnExchange (Prod_Id, ReturnExchangeID)
VALUES
    (11, 2), (120, 2), (37, 2), (14, 4), (15, 5),
    (160, 6), (37, 7), (18, 4), (19, 9), (20, 2);

INSERT INTO CustomerSupportRequests (userID, RequestType, CustomerSupportStatus, Descriptions)
VALUES
    (25, 'Product Inquiry', 'Open', 'Need information about a product'),
    (4, 'Order Issue', 'In Progress', 'Facing issues with order processing'),
    (3, 'Refund Request', 'Closed', 'Request for a refund has been processed'),
    (4, 'Technical Support', 'Open', 'Experiencing technical difficulties'),
    (5, 'Product Complaint', 'In Progress', 'Complaint about the product received'),
    (3, 'Shipping Inquiry', 'Open', 'Inquiring about the shipping status'),
    (17, 'Account Issue', 'Closed', 'Resolved account-related problem'),
    (8, 'Return Status', 'In Progress', 'Checking the status of a return'),
    (9, 'Feedback', 'Closed', 'Providing feedback on the service'),
    (10, 'Product Inquiry', 'Open', 'Need information about a product');

-----------------------------junction
CREATE TABLE OrderProductIssues (
    OrderID INT,
    IssueID INT,
    PRIMARY KEY (OrderID, IssueID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID),
    FOREIGN KEY (IssueID) REFERENCES ProductIssues(IssueID)
);
------------------junction
CREATE TABLE Product_ProductIssues (
    Prod_Id INT,
    IssueID INT,
    PRIMARY KEY (Prod_Id, IssueID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (IssueID) REFERENCES ProductIssues(IssueID)
);


CREATE TABLE ReturnExchange (------------------------------j=1
    ReturnExchangeID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    ExchangeReturnDate DATETIME default getdate(),
    returnExchangeType VARCHAR(255),
    returnExchangeStatus VARCHAR(255),
    Descriptions VARCHAR(255),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);
------------------------junction
CREATE TABLE Product_ReturnExchange (
    Prod_Id INT,
    ReturnExchangeID INT,
    PRIMARY KEY (Prod_Id, ReturnExchangeID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (ReturnExchangeID) REFERENCES ReturnExchange(ReturnExchangeID)
);

CREATE TABLE CustomerSupportRequests (
    RequestID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT,
    RequestType VARCHAR(50),
    RequestDate DATETIME default getdate(),
    CustomerSupportStatus VARCHAR(50),
    Descriptions TEXT,
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID)
);



--------------------------------------------------------------------------------
CREATE TABLE SupportResponses (
    ResponseID INT IDENTITY(1,1) PRIMARY KEY,
    RequestID INT,
    ResponderName VARCHAR(255),
    ResponseType VARCHAR(50),
    ResponseDate DATETIME default getdate(),
    ResponseText TEXT,
    FOREIGN KEY (RequestID) REFERENCES CustomerSupportRequests(RequestID)
);

CREATE TABLE FAQs (
    FAQID INT IDENTITY(1,1) PRIMARY KEY,
    Prod_Id INT,
    Question VARCHAR(255),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);

CREATE TABLE FAQAnswers (
    AnswerID INT IDENTITY(1,1) PRIMARY KEY,
    FAQID INT,
    AnswerText TEXT,
    FOREIGN KEY (FAQID) REFERENCES FAQs(FAQID)
);

CREATE TABLE Wishlists (-----------------j=1
    WishlistID INT PRIMARY KEY IDENTITY(1,1),
    userID INT REFERENCES UserProfiles(userID),
    DateAdded DATETIME DEFAULT GETDATE()
);
--------------------junction
CREATE TABLE WishlistProducts (
    WishlistID INT,
    Prod_Id INT,
    PRIMARY KEY (WishlistID, Prod_Id),
    FOREIGN KEY (WishlistID) REFERENCES Wishlists(WishlistID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);


CREATE TABLE ReviewsAndRating (
    ReviewID INT PRIMARY KEY IDENTITY(1,1),
    userID INT REFERENCES UserProfiles(userID),
    Prod_Id INT REFERENCES ProductInformation(Prod_Id),
    Rating INT,
    ReviewText TEXT,
    ReviewDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY IDENTITY(1,1),
    userID INT REFERENCES UserProfiles(userID),
    FeedbackText TEXT,
    FeedbackDate DATETIME DEFAULT GETDATE(),
    Rating INT
);

CREATE TABLE ProductOffers (----------j=2
    OfferID INT PRIMARY KEY IDENTITY(1,1),
    SpecialOfferPrice DECIMAL,
    OfferDescription VARCHAR(255),
    productAdded DATETIME DEFAULT GETDATE()
);
-----------------Junction table
CREATE TABLE Product_ProductOffers (
    Prod_Id INT REFERENCES ProductInformation(Prod_Id),
    OfferID INT REFERENCES ProductOffers(OfferID),
    PRIMARY KEY (Prod_Id, OfferID)
);
-----------------Junction table
CREATE TABLE ProductOffer_OfferTypes (
    OfferID INT,
    OfferTypeID INT,
    PRIMARY KEY (OfferID, OfferTypeID),
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID),
    FOREIGN KEY (OfferTypeID) REFERENCES OfferTypes(OfferTypeID)
);

CREATE TABLE OfferTypes (
    OfferTypeID INT PRIMARY KEY IDENTITY(1,1),
    OfferTypeName VARCHAR(50),
    OfferTypeDescription TEXT,
    StartDate DATE,
    EndDate DATE,
    DiscountPercentage DECIMAL(5, 2),
    OtherOfferTypeDetails TEXT,
    isActive bit,
    offerAdded DATETIME DEFAULT GETDATE()
);

CREATE TABLE CustomerOffersOrders (---------------j=1
    CustomerOfferID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT REFERENCES ProductOffers(OfferID),
    PurchaseDate DATETIME DEFAULT GETDATE()
);
----------------------junction
CREATE TABLE CustomerOffersOrders_ProductOffers (
    CustomerOfferID INT,
    OfferID INT,
    PRIMARY KEY (CustomerOfferID, OfferID),
    FOREIGN KEY (CustomerOfferID) REFERENCES CustomerOffersOrders(CustomerOfferID),
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID)
);
-- SupportResponses
INSERT INTO SupportResponses (RequestID, ResponderName, ResponseType, ResponseText)
VALUES
    (1, 'Customer Support Agent 1', 'Resolution', 'Your issue has been resolved successfully.'),
    (2, 'Customer Support Agent 2', 'Information', 'Provided details about the product.'),
    (3, 'Customer Support Agent 1', 'Resolution', 'Resolved the issue with your order.'),
    (4, 'Customer Support Agent 3', 'Information', 'Provided shipping details.'),
    (5, 'Customer Support Agent 2', 'Resolution', 'Your refund has been processed.'),
    (6, 'Customer Support Agent 1', 'Information', 'Guidance on product usage.'),
    (7, 'Customer Support Agent 3', 'Resolution', 'Resolved login issues.'),
    (8, 'Customer Support Agent 2', 'Information', 'Product availability information.'),
    (9, 'Customer Support Agent 1', 'Resolution', 'Addressed concerns with delivery.'),
    (10, 'Customer Support Agent 3', 'Information', 'Provided product specifications.');

-- FAQs
INSERT INTO FAQs (Prod_Id, Question)
VALUES
    (25, 'What are the different sizes available for this product?'),
    (110, 'Can I return the product if it doesn''t meet my expectations?'),
    (205, 'Are there any discounts available for bulk orders?'),
    (305, 'How can I track my order status?'),
    (412, 'What is the return policy for damaged items?'),
    (125, 'Do you offer international shipping?'),
    (225, 'Is there a warranty on electronic products?'),
    (330, 'What payment methods are accepted?'),
    (420, 'How do I cancel my order?'),
    (135, 'Are these products environmentally friendly?');

-- FAQAnswers
INSERT INTO FAQAnswers (FAQID, AnswerText)
VALUES
    (1, 'The sizes available are Small, Medium, and Large.'),
    (2, 'Yes, you can return the product within 14 days of delivery.'),
    (3, 'Bulk order discounts are available for orders of 10 or more units.'),
    (4, 'You can track your order status in your account dashboard.'),
    (5, 'Damaged items can be returned within 7 days for a replacement or refund.'),
    (6, 'Yes, we offer international shipping with varying shipping charges.'),
    (7, 'Electronic products come with a standard 1-year warranty.'),
    (8, 'We accept payments via credit/debit cards and cash on delivery.'),
    (9, 'You can cancel your order within 24 hours of placing it.'),
    (10, 'Our products adhere to environmentally friendly standards.');

-- Wishlists
INSERT INTO Wishlists (userID)
VALUES
    (5),
    (12),
    (7),
    (20),
    (3),
    (9),
    (14),
    (28),
    (11),
    (6);

-- WishlistProducts
INSERT INTO WishlistProducts (WishlistID, Prod_Id)
VALUES
    (1, 112),
    (1, 225),
    (2, 305),
    (2, 40),
    (3, 215),
    (3, 112),
    (4, 305),
    (4, 125),
    (5, 40),
    (5, 205);

-- ReviewsAndRating
INSERT INTO ReviewsAndRating (userID, Prod_Id, Rating, ReviewText)
VALUES
    (3, 112, 4, 'Great product, met my expectations.'),
    (8, 305, 5, 'Excellent quality, worth the price.'),
    (15, 40, 3, 'Average product, could be improved.'),
    (21, 215, 4, 'Fast shipping and good packaging.'),
    (5, 112, 5, 'Highly recommended, will buy again.'),
    (11, 305, 4, 'Good customer service, resolved my query.'),
    (17, 40, 2, 'Product did not meet expectations.'),
    (23, 215, 5, 'Love the design, very stylish.'),
    (9, 112, 4, 'Affordable and good value for money.'),
    (27, 305, 5, 'Fast delivery, product as described.');

-- Feedback
INSERT INTO Feedback (userID, FeedbackText, Rating)
VALUES
    (2, 'Excellent service, very satisfied with the purchase.', 5),
    (14, 'The product quality is outstanding, thank you!', 5),
    (8, 'Received the wrong item, need assistance with exchange.', 2),
    (19, 'Quick response from customer support, issue resolved.', 4),
    (7, 'The product exceeded my expectations, great job!', 5),
    (12, 'Prompt delivery, will shop again in the future.', 4),
    (26, 'Disappointed with the product, not as advertised.', 2),
    (5, 'Efficient and friendly customer service, thank you!', 5),
    (10, 'Highly dissatisfied, would not recommend.', 1),
    (30, 'Quality products, reliable service, highly recommended.', 5);

-- ProductOffers
INSERT INTO ProductOffers (SpecialOfferPrice, OfferDescription)
VALUES
    (1200.00, 'Limited-time discount on selected products.'),
    (800.00, 'Flash sale! Grab these deals before they expire.'),
    (2500.00, 'Bundle offer: Buy two and get 20% off.'),
    (1500.00, 'Clearance sale on last season''s stock.'),
    (1800.00, 'Special discount for loyal customers.'),
    (2000.00, 'Exclusive online offer for a limited period.'),
    (3000.00, 'Buy one, get one free on selected items.'),
    (1200.00, 'Student discount: Get 15% off on all products.'),
    (2200.00, 'New arrival sale'),
    (1800.00, 'Limited Edition');

-- Product_ProductOffers
INSERT INTO Product_ProductOffers (Prod_Id, OfferID)
VALUES
    (112, 1),
    (305, 3),
    (40, 5),
    (215, 7),
    (112, 9),
    (305, 2),
    (40, 4),
    (215, 6),
    (112, 8),
    (305, 10);

-- ProductOffer_OfferTypes
INSERT INTO ProductOffer_OfferTypes (OfferID, OfferTypeID)
VALUES
    (1, 3),
    (2, 1),
    (3, 4),
    (4, 9),
    (5, 5),
    (8, 1),
    (7, 3),
    (7, 2),
    (9, 4),
    (10, 1);

-- OfferTypes
INSERT INTO OfferTypes (OfferTypeName, OfferTypeDescription, StartDate, EndDate, DiscountPercentage, OtherOfferTypeDetails, isActive)
VALUES
    ('Percentage Discount', 'Get a percentage off on your purchase.', '2024-01-15', '2024-02-15', 15.00, 'Not applicable', 1),
    ('Flat Discount', 'Enjoy a flat discount on selected items.', '2024-01-10', '2024-01-31', 500.00, 'Minimum purchase required: 3000', 1),
    ('Bundle Offer', 'Special bundle offer on product combinations.', '2024-02-01', '2024-02-28', 20.00, 'Applicable on selected products only', 1),
    ('Clearance Sale', 'Clearance sale on last season''s stock.', '2024-01-20', '2024-02-20', 30.00, 'Limited stock available', 1),
    ('Loyalty Discount', 'Exclusive discount for loyal customers.', '2024-01-15', '2024-02-15', 10.00, 'Valid for customers with more than 5 purchases', 1),
    ('Flash Sale', 'Exciting flash sale with limited-time offers.', '2024-01-25', '2024-01-25', 25.00, 'Applicable on all products', 1),
    ('Buy One Get One Free', 'Special offer: Buy one and get one free.', '2024-02-10', '2024-02-15', 0.00, 'Free product will be of equal or lesser value', 1),
    ('Student Discount', 'Discount for students on selected items.', '2024-01-15', '2024-02-28', 15.00, 'Valid student ID required', 1),
    ('Weekend Sale', 'Weekend sale with exciting offers.', '2024-01-20', '2024-01-22', 20.00, 'Applicable on weekends only', 1),
    ('Introductory Offer', 'Special introductory offer for new customers.', '2024-01-15', '2024-02-15', 10.00, 'Valid for first-time customers', 1);

-- CustomerOffersOrders
INSERT INTO CustomerOffersOrders (OfferID, PurchaseDate)
VALUES
    (3, '2024-01-16'),
    (5, '2024-01-18'),
    (1, '2024-01-22'),
    (9, '2024-01-24'),
    (2, '2024-01-28'),
    (7, '2024-02-01'),
    (4, '2024-02-05'),
    (10, '2024-02-08'),
    (6, '2024-02-12'),
    (8, '2024-02-15');

-- CustomerOffersOrders_ProductOffers
INSERT INTO CustomerOffersOrders_ProductOffers (CustomerOfferID, OfferID)
VALUES
    (1, 3),
    (9, 5),
    (3, 7),
    (4, 9),
    (5, 2),
    (6, 7),
    (7, 4),
    (8, 10),
    (9, 6),
    (10, 8);




CREATE TABLE Warehouse (--------------------j=2
    WarehouseID INT PRIMARY KEY IDENTITY(1,1),
    warehouseName varchar(200),
    Locations VARCHAR(255),
    warehouseCreationDate DATETIME DEFAULT GETDATE()
)
INSERT INTO Warehouse (warehouseName, Locations)
VALUES
('Karachi Logistics Center 1', 'Karachi'),
('Karachi Storage Solutions 2', 'Karachi'),
('Karachi Distribution Hub 3', 'Karachi'),
('Lahore Storage Solutions 1', 'Lahore'),
('Karachi Warehousing Services 4', 'Karachi'),
('Multan Freight Terminal 1', 'Multan'),
('Karachi Logistics Park 5', 'Karachi'),
('Karachi Storage Facility 6', 'Karachi'),
('Islamabad Distribution Center 1', 'Islamabad'),
('Karachi Logistics Yard 7', 'Karachi'),
('Karachi Distribution Center 8', 'Karachi'),
('Quetta Storage Facility 1', 'Quetta'),
('Karachi Warehouse Complex 9', 'Karachi'),
('Sukkur Freight Station 1', 'Sukkur'),
('Karachi Storage Depot 10', 'Karachi'),
('Faisalabad Logistics Center 1', 'Faisalabad'),
('Karachi Warehousing Solutions 11', 'Karachi'),
('Hyderabad Distribution Center 1', 'Hyderabad'),
('Karachi Storage Terminal 12', 'Karachi'),
('Karachi Logistics Center 2', 'Karachi');
-------------------------junction
CREATE TABLE Warehouse_ReturnExchange (
    WarehouseID INT,
    ReturnExchangeID INT,
	Primary Key(WarehouseID,ReturnExchangeID),
	    warehouseOrder_ReturnDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID),
    FOREIGN KEY (ReturnExchangeID) REFERENCES ReturnExchange(ReturnExchangeID)
);
---------------------------junction
Create Table Warehouse_OrderT_Junction(
	    WarehouseID INT,
		OrderID INT REFERENCES OrderInfo(OrderID),
        OrderStatus BIT,
	    warehouseOrder_statusDate DATETIME DEFAULT GETDATE()
		Primary Key(WarehouseID,OrderID),
        FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID),
);
CREATE TABLE CollectionCenter (-------------j=1
    CenterID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    OrderStatus VARCHAR(255),
    collectionCenterOrder_ReturnDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID),
);
---------------------junction
CREATE TABLE CollectionCenter_ReturnExchange (
    CenterID INT,
    ReturnExchangeID INT,
	Primary Key(CenterID,ReturnExchangeID),
    FOREIGN KEY (CenterID) REFERENCES CollectionCenter(CenterID),
    FOREIGN KEY (ReturnExchangeID) REFERENCES ReturnExchange(ReturnExchangeID)
);

CREATE TABLE Delivery (-------------j=1
    RiderID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    CustomerName VARCHAR(255),
    ShippingAddress VARCHAR(255),
    ContactInformation VARCHAR(255),
    OrderStatus VARCHAR(255),
    DeliveryType VARCHAR(70) DEFAULT 'order',
    deliveryOrder_ReturnDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (OrderID) REFERENCES orderinfo(OrderID),
);
------------------junction
CREATE TABLE Delivery_ReturnExchange (
    RiderID INT,
    ReturnExchangeID INT,
	PRIMARY KEY (RiderID, ReturnExchangeID),
    FOREIGN KEY (ReturnExchangeID) REFERENCES ReturnExchange(ReturnExchangeID),
    FOREIGN KEY (RiderID) REFERENCES Delivery(RiderID)
);

CREATE TABLE CityDeliveryFee (
    CityDeliveryFeeID INT PRIMARY KEY IDENTITY(1,1),
    Fee DECIMAL(10, 2),
    CityName VARCHAR(255) UNIQUE,
    CityDeliveryFeeAddition DATETIME DEFAULT GETDATE()
);
INSERT INTO Warehouse_ReturnExchange (WarehouseID, ReturnExchangeID)
VALUES
    (1, 3),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (1, 6),
    (7, 7),
    (8, 8),
    (9, 3),
    (10, 10);
INSERT INTO Warehouse_OrderT_Junction (WarehouseID, OrderID, OrderStatus)
VALUES
    (8, 21, 1),
    (2, 22, 1),
    (3, 23, 1),
    (4, 24, 0),
    (7, 25, 1),
    (6, 26, 1),
    (7, 22, 0),
    (8, 18, 1),
    (9, 19, 1),
    (10, 10, 1);
INSERT INTO CollectionCenter (OrderID, OrderStatus)
VALUES
    (11, 'Arrive'),
    (21, 'Cancelled'),
    (13, 'Reach'),
    (14, 'Reach'),
    (15, 'Reach'),
    (16, 'Arrive'),
    (7, 'Reach'),
    (8, 'Reach'),
    (9, 'Arrive'),
    (10, 'Reach');
INSERT INTO CollectionCenter_ReturnExchange (CenterID, ReturnExchangeID)
VALUES
    (2, 1),
    (2, 2),
    (3, 9),
    (8, 4),
    (5, 5),
    (7, 4),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
INSERT INTO Delivery (OrderID, CustomerName, ShippingAddress, ContactInformation, OrderStatus)
VALUES
    (11, 'Ali Khan', '123 Street, Lahore', '0333-1234567', 'Delivered'),
    (21, 'Sara Ahmed', '456 Road, Karachi', '0312-9876543', 'In Progress'),
    (13, 'Usman Malik', '789 Avenue, Islamabad', '0345-6789012', 'Pending'),
    (14, 'Aisha Abbas', '101 Lane, Lahore', '0321-2345678', 'Delivered'),
    (15, 'Ahmed Khan', '202 Block, Karachi', '0300-9876543', 'In Progress'),
    (16, 'Maryam Ali', '303 Sector, Islamabad', '0311-6789012', 'Pending'),
    (7, 'Zubair Ahmed', '404 Street, Lahore', '0332-2345678', 'Delivered'),
    (8, 'Sadia Malik', '505 Road, Karachi', '0320-9876543', 'In Progress'),
    (9, 'Khalid Abbas', '606 Avenue, Islamabad', '0319-6789012', 'Pending'),
    (10, 'Noor Aisha', '707 Lane, Lahore', '0344-2345678', 'Delivered');
INSERT INTO Delivery_ReturnExchange (RiderID, ReturnExchangeID)
VALUES
    (2, 1),
    (2, 2),
    (3, 3),
    (4, 5),
    (7, 5),
    (6, 6),
    (7, 9),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO CityDeliveryFee (Fee, CityName)
VALUES
    (50.00, 'Karachi'),
    (600.00, 'Lahore'),
    (700.00, 'Islamabad'),
    (400.00, 'Rawalpindi'),
    (550.00, 'Faisalabad'),
    (650.00, 'Multan'),
    (750.00, 'Peshawar'),
    (450.00, 'Quetta'),
    (800.00, 'Sialkot'),
    (350.00, 'Gujranwala');

CREATE TABLE Inventory (------------------j=1
    InventoryID INT PRIMARY KEY IDENTITY(1,1),
    InventoryName VARCHAR(70),
    Quantity INT,
    SupplierName VARCHAR(255),
    DateOfAddition DATEtime default getdate(),
    ExpireDates DATE,
    PricePerPiece DECIMAL(10, 2),
);
INSERT INTO Inventory (InventoryName, Quantity, SupplierName, ExpireDates, PricePerPiece)
VALUES
    ('Inventory 1', 50, 'TechHub Pakistan', '2024-12-31', 1200.00),
    ('Inventory 2', 75, 'MobileHut', '2023-11-30', 800.50),
    ('Inventory 3', 60, 'Vision Electronics', '2024-08-15', 1500.00),
    ('Inventory 4', 40, 'CoolWaves Appliances', '2023-10-25', 1800.00),
    ('Inventory 5', 100, 'Laundry Solutions', '2024-09-20', 900.75),
    ('Inventory 6', 45, 'CoolBreeze Technologies', '2023-12-10', 2000.00),
    ('Inventory 7', 30, 'SoundCity Pakistan', '2024-07-05', 1200.50),
    ('Inventory 8', 25, 'Pixel Perfect', '2024-06-30', 2500.00),
    ('Inventory 9', 80, 'PrintTech', '2024-11-15', 700.25),
    ('Inventory 10', 65, 'GameWorld', '2023-09-01', 1800.00),
    ('Inventory 11', 50, 'SoundSpectrum', '2024-10-18', 1200.75),
    ('Inventory 12', 35, 'KitchenCraft', '2023-08-22', 500.00),
    ('Inventory 13', 90, 'QuickHeat Appliances', '2024-05-12', 800.50),
    ('Inventory 14', 40, 'CleanTech Pakistan', '2024-04-02', 1000.75),
    ('Inventory 15', 55, 'BrewMaster', '2023-07-15', 700.25),
    ('Inventory 16', 70, 'ToastyTech', '2024-03-08', 600.00),
    ('Inventory 17', 95, 'StyleCraft Pakistan', '2023-06-25', 400.75),
    ('Inventory 18', 85, 'ChargeHub', '2024-02-10', 300.00),
    ('Inventory 19', 60, 'DataVault', '2023-05-28', 1200.25),
    ('Inventory 20', 45, 'FitGuru', '2024-01-15', 900.00),
    ('Inventory 21', 75, 'FashionVibes', '2023-04-20', 350.75),
    ('Inventory 22', 55, 'TravelGear', '2023-03-05', 600.00),
    ('Inventory 23', 65, 'TimeMaster Pakistan', '2024-09-12', 1500.25),
    ('Inventory 24', 80, 'ShadeZone', '2023-02-18', 800.00),
    ('Inventory 25', 70, 'EcoGlow', '2024-08-05', 50.75),
    ('Inventory 26', 120, 'GameNest', '2023-01-20', 200.00),
    ('Inventory 27', 100, 'YogaZen', '2024-07-28', 300.25),
    ('Inventory 28', 90, 'GreenThumb', '2023-12-15', 400.00),
    ('Inventory 29', 110, 'MindPuzzlers', '2024-06-02', 100.75),
    ('Inventory 30', 95, 'ArtisticDreams', '2023-11-10', 150.00);
select * from Inventory

-----------------------junction
CREATE TABLE Inventory_WarehouseJunction(
    InventoryID INT,
    WarehouseID INT,
    PRIMARY KEY (InventoryID, WarehouseID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID)
);
INSERT INTO Inventory_WarehouseJunction (InventoryID, WarehouseID)
VALUES
    (1, 2),
    (3, 1),
    (2, 3),
    (4, 2),
    (5, 1),
    (6, 3),
    (7, 2),
    (8, 1),
    (9, 3),
    (10, 1);

CREATE TABLE LuckyDraw (
    draw_id INT PRIMARY KEY IDENTITY(1,1),
    draw_name VARCHAR(255),
    draw_start_date DATE,
    draw_end_date DATE,
    prize_description VARCHAR(255),
    participants_limit INT,
    registration_status bit DEFAULT 0
);

CREATE TABLE Participant (---------------------j=1
    participant_id INT PRIMARY KEY IDENTITY(1,1),
    draw_id INT,
    participant_name VARCHAR(255),
    participant_email VARCHAR(255),
    registration_date DateTime Default getDate(),
    winner Bit DEFAULT 0,
    FOREIGN KEY (draw_id) REFERENCES LuckyDraw(draw_id),
);
--------------------junction
CREATE TABLE OrderParticipant (
    OrderID INT FOREIGN KEY REFERENCES OrderInfo(OrderID),
    ParticipantID INT FOREIGN KEY REFERENCES Participant(participant_id),
    PRIMARY KEY (OrderID, ParticipantID)
);


CREATE TABLE GiftHampers (
    HamperID INT PRIMARY KEY IDENTITY(1,1),
    HamperName VARCHAR(255),
    HamperDescription VARCHAR(255),
    HamperLimit DECIMAL(10,2)
);

  
CREATE TABLE HamperRecipient (
    recipient_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT,
    hamper_id INT,
    purchase_date DATEtime default getdate(),
    FOREIGN KEY (order_id) REFERENCES OrderInfo(OrderID),
    FOREIGN KEY (hamper_id) REFERENCES GiftHampers(hamperID)
);

CREATE TABLE ExpiringDiscounts (-----------------------j=2
    ExpireID INT PRIMARY KEY IDENTITY(1,1),
    ProductOfferID INT, 
    SellingDate DATE,
    Discounts DECIMAL(10, 2),
    DemandIncrease INT,
    NewSellingDate DATE,
    FOREIGN KEY (ProductOfferID) REFERENCES ProductOffers(OfferID),
	ExpiringDiscountsDate DateTime Default getdate(),
);
----------------------junction
CREATE TABLE ExpiringInventoryJunction (
    ExpireID INT,
    InventoryID INT,
    PRIMARY KEY (ExpireID, InventoryID),
    FOREIGN KEY (ExpireID) REFERENCES ExpiringDiscounts(ExpireID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
----------------junction
CREATE TABLE ExpiringOrdersJunction (
    ExpireID INT,
    OrderID INT,
    PRIMARY KEY (ExpireID, OrderID),
    FOREIGN KEY (ExpireID) REFERENCES ExpiringDiscounts(ExpireID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);
-- Insert 10 rows into LuckyDraw
INSERT INTO LuckyDraw (draw_name, draw_start_date, draw_end_date, prize_description, participants_limit, registration_status)
VALUES
    ('Eid Lucky Draw', '2024-05-01', '2024-05-31', 'Win exciting prizes this Eid!', 500, 0),
    ('Independence Day Draw', '2024-08-01', '2024-08-15', 'Celebrate with special gifts!', 300, 0),
    ('New Year Countdown', '2024-12-01', '2024-12-31', 'Welcome the new year with surprises!', 1000, 0),
    ('Spring Festival', '2024-03-01', '2024-03-31', 'Embrace the colors of spring!', 700, 0),
    ('Winter Wonderland', '2024-11-01', '2024-11-30', 'Warm up with winter delights!', 400, 0),
    ('Summer Splash', '2024-06-01', '2024-06-30', 'Cool off with summer treats!', 800, 0),
    ('Back to School Bonanza', '2024-09-01', '2024-09-30', 'Gear up for the new school year!', 600, 0),
    ('Anniversary Extravaganza', '2024-02-01', '2024-02-29', 'Celebrate milestones with amazing gifts!', 900, 0),
    ('Halloween Spooktacular', '2024-10-01', '2024-10-31', 'Get ready for a spooky surprise!', 350, 0),
    ('Festive Frenzy', '2024-07-01', '2024-07-31', 'Experience the joy of festivities!', 550, 0);

-- Insert 10 rows into Participant
INSERT INTO Participant (draw_id, participant_name, participant_email, registration_date, winner)
VALUES
    (1, 'Ali', 'ali@example.com', '2024-05-05', 0),
    (4, 'Fatima', 'fatima@example.com', '2024-08-10', 0),
    (3, 'Ahmed', 'ahmed@example.com', '2024-12-15', 0),
    (4, 'Sana', 'sana@example.com', '2024-03-10', 0),
    (5, 'Omar', 'omar@example.com', '2024-11-20', 0),
    (6, 'Zainab', 'zainab@example.com', '2024-06-05', 0),
    (7, 'Bilal', 'bilal@example.com', '2024-09-15', 0),
    (4, 'Ayesha', 'ayesha@example.com', '2024-02-10', 0),
    (9, 'Kamran', 'kamran@example.com', '2024-10-25', 0),
    (1, 'Hina', 'hina@example.com', '2024-07-05', 0);

-- Insert 10 rows into OrderParticipant
INSERT INTO OrderParticipant (OrderID, ParticipantID)
VALUES
    (15, 7),
    (12, 2),
    (13, 3),
    (14, 4),
    (15, 5),
    (16, 6),
    (17, 7),
    (8, 8),
    (13, 7),
    (10, 1);
-- Insert 10 rows into GiftHampers
INSERT INTO GiftHampers (HamperName, HamperDescription, HamperLimit)
VALUES
    ('Eid Special Hamper', 'Filled with festive delights!', 10000.00),
    ('Independence Day Surprise', 'A patriotic selection of gifts!', 30000.00),
    ('New Year Celebration Pack', 'For a joyful start to the year!', 80000.00),
    ('Springtime Splendor', 'Capture the essence of spring!', 60000.00),
    ('Winter Warmth Delight', 'Stay cozy with winter treats!', 10000.00),
    ('Summer Joyful Bundle', 'Beat the heat with summer goodies!', 7000.00),
    ('Back to School Essentials', 'Gear up for a successful school year!', 45000.00),
    ('Anniversary Bliss Box', 'Celebrate love and togetherness!', 9000.00),
    ('Halloween Mystery Package', 'Unbox the magic of Halloween!', 8000.00),
    ('Festive Season Extravaganza', 'Experience the magic of festivities!', 5500.00);

-- Insert 10 rows into HamperRecipient
INSERT INTO HamperRecipient (order_id, hamper_id , purchase_date)
VALUES
    (14, 1, '2024-05-10'),
    (12, 2,  '2024-08-20'),
    (13, 4,  '2024-12-25'),
    (14, 4,  '2024-03-15'),
    (15, 5,  '2024-11-25'),
    (16, 6, '2024-06-15'),
    (7, 7,  '2024-09-25'),
    (14, 8,  '2024-02-20'),
    (9, 9,  '2024-10-30'),
    (10, 1, '2024-07-10');

-- Insert 10 rows into ExpiringDiscounts
INSERT INTO ExpiringDiscounts (ProductOfferID, SellingDate, Discounts, DemandIncrease, NewSellingDate, ExpiringDiscountsDate)
VALUES
    (10, '2024-05-01', 10.00, 50, '2024-05-10', '2024-05-10'),
    (2, '2024-08-01', 15.00, 30, '2024-08-10', '2024-08-10'),
    (3, '2024-12-01', 20.00, 80, '2024-12-10', '2024-12-10'),
    (7, '2024-03-01', 12.00, 60, '2024-03-10', '2024-03-10'),
    (5, '2024-11-01', 18.00, 40, '2024-11-10', '2024-11-10'),
    (6, '2024-06-01', 14.00, 70, '2024-06-10', '2024-06-10'),
    (7, '2024-09-01', 16.00, 55, '2024-09-10', '2024-09-10'),
    (3, '2024-02-01', 22.00, 45, '2024-02-10', '2024-02-10'),
    (9, '2024-10-01', 11.00, 65, '2024-10-10', '2024-10-10'),
    (10, '2024-07-01', 19.00, 75, '2024-07-10', '2024-07-10');

-- Insert 10 rows into ExpiringInventoryJunction
INSERT INTO ExpiringInventoryJunction (ExpireID, InventoryID)
VALUES
    (1, 11),
    (2, 7),
    (3, 13),
    (4, 14),
    (5, 5),
    (6, 16),
    (5, 7),
    (8, 18),
    (9, 19),
    (1, 10);

INSERT INTO ExpiringOrdersJunction (ExpireID, OrderID)
VALUES
    (1, 18),(2, 12),
    (3, 13),(4, 14),
    (5, 15),(6,13),
    (2, 17),(8, 8),
    (9, 9),(1, 10);

CREATE TABLE SeasonalHikes (------------------------j=2
    SeasonID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT, 
    Demand INT,
    HikedPrice DECIMAL(10, 2),
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID), 
    seasonalHikeDate Datetime default getdate(),
);
----------------------junction
CREATE TABLE SeasonalHikeInventoryJunction (
    SeasonID INT,
    InventoryID INT,
    PRIMARY KEY (SeasonID, InventoryID),
    FOREIGN KEY (SeasonID) REFERENCES SeasonalHikes(SeasonID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
----------------------junction
CREATE TABLE SeasonalHikeOrdersJunction (
    SeasonID INT,
    OrderID INT,
    PRIMARY KEY (SeasonID, OrderID),
    FOREIGN KEY (SeasonID) REFERENCES SeasonalHikes(SeasonID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);

CREATE TABLE BannedProducts (----------j=2
    BannedProductID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT, 
    Demand INT,
    Discounted BIT,
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID),
	bannedProductsDate datetime Default getdate()
);
-----------------junction
CREATE TABLE BannedInventoryJunction (
    BannedProductID INT,
    InventoryID INT,
    PRIMARY KEY (BannedProductID, InventoryID),
    FOREIGN KEY (BannedProductID) REFERENCES BannedProducts(BannedProductID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
----------------junction
CREATE TABLE BannedOrdersJunction (
    BannedProductID INT,
    OrderID INT,
    PRIMARY KEY (BannedProductID, OrderID),
    FOREIGN KEY (BannedProductID) REFERENCES BannedProducts(BannedProductID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);

CREATE TABLE UnbannedProducts (-------------------------j=2
    UnbannedProductID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT, 
    Demand INT,
    HikedPrice DECIMAL(10, 2),
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID), 
);
--------------------------------junction
CREATE TABLE UnbannedInventoryJunction (
    UnbannedProductID INT,
    InventoryID INT,
    PRIMARY KEY (UnbannedProductID, InventoryID),
    FOREIGN KEY (UnbannedProductID) REFERENCES UnbannedProducts(UnbannedProductID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
--------------------------------junction
CREATE TABLE UnbannedOrdersJunction (
    UnbannedProductID INT,
    OrderID INT,
    PRIMARY KEY (UnbannedProductID, OrderID),
    FOREIGN KEY (UnbannedProductID) REFERENCES UnbannedProducts(UnbannedProductID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);

CREATE TABLE SaleOptimization (-----------------j=1
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT,
    SuccessRate DECIMAL(5, 2),
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID), 
);
--------------------------junction
CREATE TABLE SaleInventoryJunction (
    SaleID INT,
    InventoryID INT,
    PRIMARY KEY (SaleID, InventoryID),
    FOREIGN KEY (SaleID) REFERENCES SaleOptimization(SaleID),
    FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);

CREATE TABLE CharityPartners (
    PartnerID INT PRIMARY KEY IDENTITY(1,1),
    PartnerName VARCHAR(255),
    OrganizationLocation VARCHAR(255),
    LinkDate DATE,
    TotalAmountPaid DECIMAL(10, 2),
    TotalAmountDue DECIMAL(10, 2)
);

CREATE TABLE CharitablePurchaseDonations (-------------------j=2
    DonatedID INT PRIMARY KEY IDENTITY(1,1),
    cart_id INT, 
    FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id) 
);
-----------------junction
CREATE TABLE CharitablePurchasePartnersJunction (
    DonatedID INT,
    PartnerID INT,
    PRIMARY KEY (DonatedID, PartnerID),
    FOREIGN KEY (DonatedID) REFERENCES CharitablePurchaseDonations(DonatedID),
    FOREIGN KEY (PartnerID) REFERENCES CharityPartners(PartnerID)
);

--------------------junction
CREATE TABLE Product_CharitiesDonationJunction (
    Prod_Id INT,
    DonatedID INT,
    PRIMARY KEY (Prod_Id, DonatedID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (DonatedID) REFERENCES CharitablePurchaseDonations(DonatedID)
);

INSERT INTO SeasonalHikes (OfferID, Demand, HikedPrice)
VALUES
    (2, 20, 500.00),
    (2, 15, 700.00),
    (3, 25, 800.00),
    (4, 18, 600.00),
    (7, 22, 900.00),
    (6, 17, 550.00),
    (7, 30, 1000.00),
    (8, 24, 750.00),
    (5, 21, 950.00),
    (1, 19, 850.00);

INSERT INTO SeasonalHikeInventoryJunction (SeasonID, InventoryID)
VALUES
    (8, 1),
    (2, 2),
    (3, 7),
    (4, 4),
    (5, 5),
    (10, 6),
    (7, 7),
    (8, 5),
    (9, 9),
    (10, 1);

INSERT INTO SeasonalHikeOrdersJunction (SeasonID, OrderID)
VALUES
    (4, 7),(2, 22),
    (3, 13),
    (4, 14),
    (5, 17),
    (6, 15),
    (7, 7),
    (9, 8),
    (9, 13),
    (1, 10);

INSERT INTO BannedProducts (OfferID, Demand, Discounted)
VALUES
    (10, 12, 1),
    (2, 10, 0),
    (3, 15, 1),
    (4, 8, 0),
    (9, 20, 1),
    (6, 18, 0),
    (7, 25, 1),
    (9, 22, 0),
    (9, 30, 1),
    (4, 28, 0);

INSERT INTO BannedInventoryJunction (BannedProductID, InventoryID)
VALUES
    (10, 1),
    (4, 2),
    (4, 8),
    (8, 4),
    (4, 4),
    (3, 6),
    (4, 7),
    (4, 9),
    (2, 9),
    (1, 10);

INSERT INTO BannedOrdersJunction (BannedProductID, OrderID)
VALUES
    (10, 8),
    (2, 12),
    (3, 10),
    (8, 14),
    (5, 15),
    (6, 16),
    (7, 7),
    (8, 8),
    (9, 9),
    (2, 10);

INSERT INTO UnbannedProducts (OfferID, Demand, HikedPrice)
VALUES
    (1, 18, 650.00),
    (10, 20, 750.00),
    (3, 15, 600.00),
    (2, 22, 850.00),
    (5, 25, 900.00),
    (8, 18, 700.00),
    (7, 30, 1000.00),
    (8, 24, 800.00),
    (9, 21, 950.00),
    (10, 19, 850.00);

INSERT INTO UnbannedInventoryJunction (UnbannedProductID, InventoryID)
VALUES
    (10, 10),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 6),
    (6, 6),
    (7, 7),
    (7, 8),
    (9, 9),
    (2, 10);

INSERT INTO UnbannedOrdersJunction (UnbannedProductID, OrderID)
VALUES
    (10, 11),
    (2, 21),
    (3, 18),
    (4, 14),
    (5, 15),
    (6, 16),
    (7, 18),
    (8, 8),
    (9, 9),
    (5, 10);

INSERT INTO SaleOptimization (OfferID, SuccessRate)
VALUES
    (8, 0.8),
    (2, 0.7),
    (3, 0.9),
    (4, 0.85),
    (5, 0.75),
    (6, 0.95),
    (7, 0.78),
    (8, 0.88),
    (9, 0.92),
    (4, 0.81);

INSERT INTO SaleInventoryJunction (SaleID, InventoryID)
VALUES
    (4, 4),
    (2, 2),
    (3, 3),
    (3, 4),
    (5, 5),
    (6, 6),
    (8, 7),
    (1, 8),
    (7, 9),
    (4, 10);

INSERT INTO CharityPartners (PartnerName, OrganizationLocation, LinkDate, TotalAmountPaid, TotalAmountDue)
VALUES
    ('Edhi Foundation', 'Karachi', '2022-01-15', 5000.00, 2000.00),
    ('Saylani Welfare', 'Karachi', '2022-01-15', 7000.00, 2500.00),
    ('Chhipa Welfare', 'Karachi', '2022-01-15', 8000.00, 1800.00),
    ('Imran Khan Foundation', 'Islamabad', '2022-01-15', 6000.00, 2200.00),
    ('Lahore Cares', 'Lahore', '2022-01-15', 9000.00, 1900.00),
    ('Quetta Relief', 'Quetta', '2022-01-15', 5500.00, 2300.00),
    ('Peshawar Aid', 'Peshawar', '2022-01-15', 10000.00, 1600.00),
    ('Multan Hope', 'Multan', '2022-01-15', 7500.00, 2100.00),
    ('Faisalabad Uplift', 'Faisalabad', '2022-01-15', 9500.00, 1700.00),
    ('Rawalpindi Support', 'Rawalpindi', '2022-01-15', 8500.00, 2000.00);

INSERT INTO CharitablePurchaseDonations (cart_id)
VALUES
    (8),
    (2),
    (3),
    (3),
    (5),
    (7),
    (7),
    (8),
    (9),
    (10);

INSERT INTO CharitablePurchasePartnersJunction (DonatedID, PartnerID)
VALUES
    (2, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 8),
    (7, 7),
    (8, 8),
    (9, 9),
    (2, 10);

INSERT INTO Product_CharitiesDonationJunction (Prod_Id, DonatedID)
VALUES
    (8, 9),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 2),
    (8, 7),
    (8, 8),
    (9, 9),
    (10, 1);

CREATE TABLE CharityOnPurchase (--------------j=2
    CharPerProID INT PRIMARY KEY IDENTITY(1,1),
    cart_id INT, 
    ProfitPerPiece DECIMAL(10, 2),
    DonationPerPiece DECIMAL(10, 2),
    DemandIncreased INT,
    FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id) 
);
--------------------------junction
CREATE TABLE CharityOnPurchase_PartnersJunction (
    CharPerProID INT,
    PartnerID INT,
    PRIMARY KEY (CharPerProID, PartnerID),
    FOREIGN KEY (CharPerProID) REFERENCES CharityOnPurchase(CharPerProID),
    FOREIGN KEY (PartnerID) REFERENCES CharityPartners(PartnerID)
);
----------------------junction
CREATE TABLE CharityOnPurchase_ProductsJunction (
    CharPerProID INT,
    Prod_Id INT,
    PRIMARY KEY (CharPerProID, Prod_Id),
    FOREIGN KEY (CharPerProID) REFERENCES CharityOnPurchase(CharPerProID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);

CREATE TABLE CustomerInterests (------------------j=1
    CustIntID INT PRIMARY KEY IDENTITY(1,1),
    userID int REFERENCES UserProfiles(userID),
    ProductCategory VARCHAR(255),
    ProductPrice DECIMAL(10, 2),
    );
	-----------------junction
CREATE TABLE CustomerInterestsOrdersJunction (
    CustIntID INT,
    OrderID INT,
    PRIMARY KEY (CustIntID, OrderID),
    FOREIGN KEY (CustIntID) REFERENCES CustomerInterests(CustIntID),
    FOREIGN KEY (OrderID) REFERENCES OrderInfo(OrderID)
);

INSERT INTO CharityOnPurchase (cart_id, ProfitPerPiece, DonationPerPiece, DemandIncreased)
VALUES
    (8, 10.00, 2.50, 20),
    (9, 12.00, 3.00, 15),
    (3, 9.00, 2.25, 25),
    (4, 11.00, 2.75, 18),
    (4, 8.00, 2.00, 22),
    (6, 13.00, 3.25, 17),
    (7, 10.50, 2.60, 19),
    (7, 12.50, 3.10, 21),
    (9, 9.50, 2.35, 23),
    (10, 11.50, 2.85, 16);

INSERT INTO CharityOnPurchase_PartnersJunction (CharPerProID, PartnerID)
VALUES
    (8, 1),
    (2, 2),
    (3, 7),
    (4, 4),
    (6, 5),
    (6, 6),
    (7, 5),
    (8, 8),
    (4, 9),
    (10, 10);

INSERT INTO CharityOnPurchase_ProductsJunction (CharPerProID, Prod_Id)
VALUES
    (8, 1),
    (2, 3),
    (3, 3),
    (4, 4),
    (7, 5),
    (6, 9),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO CustomerInterests (userID, ProductCategory, ProductPrice)
VALUES
    (11, 'Clothing', 50.00),
    (21, 'Electronics', 120.00),
    (3, 'Home Decor', 80.00),
    (4, 'Footwear', 60.00),
    (5, 'Beauty', 90.00),
    (12, 'Sports', 75.00),
    (7, 'Books', 40.00),
    (4, 'Toys', 30.00),
    (9, 'Kitchenware', 70.00),
    (10, 'Jewelry', 110.00);

INSERT INTO CustomerInterestsOrdersJunction (CustIntID, OrderID)
VALUES
    (1, 14),
    (2, 12),
    (3, 23),
    (4, 24),
    (5, 15),
    (6, 23),
    (2, 17),
    (8, 8),
    (9, 9),
    (4, 12);




-------------------------------93 ------------------------C-S-------------

CREATE TABLE Interaction (----------------j=2
    InteractionID INT PRIMARY KEY IDENTITY(1,1),
    InteractionType VARCHAR(255),
    InteractionTimestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    InteractionDetails VARCHAR(255)
);
-------------------------------junction
CREATE TABLE UserInteractionJunction (
    userID INT, 
    InteractionID INT ,
    InteractionTimestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (userID, InteractionID),
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID),
    FOREIGN KEY (InteractionID) REFERENCES Interaction(InteractionID)
);
-------------------------------junction
CREATE TABLE ProductInteractionJunction (
    Prod_Id INT,
    InteractionID INT ,
    InteractionTimestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (Prod_Id, InteractionID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id),
    FOREIGN KEY (InteractionID) REFERENCES Interaction(InteractionID)
);

CREATE TABLE Bundle (--------------j=1
    BundleID INT PRIMARY KEY IDENTITY(1,1),
    OfferID INT,
    DiscountPercentage DECIMAL(5,2),
    BundlePrice DECIMAL(10,2),
    CreationTimestamp DateTime DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (OfferID) REFERENCES ProductOffers(OfferID)
);
----------------------junction
CREATE TABLE ProductBundle (
    BundleID INT,
    Prod_Id INT,
    CreationTimestamp dateTime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (BundleID, Prod_Id),
    FOREIGN KEY (BundleID) REFERENCES Bundle(BundleID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);

CREATE TABLE WebsiteTraffic (
    VisitID INT IDENTITY(1,1) PRIMARY KEY,
    visitTimestamp DATETIME default getdate(), 
    PageURL VARCHAR(255),
    userID INT FOREIGN KEY REFERENCES UserProfiles(userID),
    SourceName VARCHAR(50), 
    PlatformName VARCHAR(50), 
    ConversionType VARCHAR(50), 
    ConversionValue DECIMAL(10, 2) 
);
CREATE TABLE SeasonalTrends (---------------j=1
    SeasonalTrendID INT PRIMARY KEY IDENTITY(1,1),
    SeasonalTimestamp DATETIME default getdate(),
    TrendDescription VARCHAR(255)
);
-----------------junction
CREATE TABLE ProductSeasonalTrends (
    SeasonalTrendID INT,
    Prod_Id INT,
    PRIMARY KEY (SeasonalTrendID, Prod_Id),
    FOREIGN KEY (SeasonalTrendID) REFERENCES SeasonalTrends(SeasonalTrendID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);
CREATE TABLE SalesTrends (----------------j=1
    SalesTrendID INT PRIMARY KEY IDENTITY(1,1),
    salesTimestamp DATETIME default getdate(),
    TrendDescription VARCHAR(255),
);
---------------junction
CREATE TABLE SalesTrends_Products (
    SalesTrendID INT,
    Prod_Id INT,
    PRIMARY KEY (SalesTrendID, Prod_Id),
    FOREIGN KEY (SalesTrendID) REFERENCES SalesTrends(SalesTrendID),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);
CREATE TABLE Referrals (
    ReferralID INT PRIMARY KEY IDENTITY(1,1),
    ReferrerUserID INT,
    ReferralType VARCHAR(255),
    FOREIGN KEY (ReferrerUserID) REFERENCES UserProfiles(userID)
);
CREATE TABLE SeasonalProducts (
    SeasonalProductID INT PRIMARY KEY  IDENTITY(1,1),
    Prod_Id INT,
    SeasonStart DATETime,
    SeasonEnd DATETime,
    seasonalDescription VARCHAR(255),
    IsActive BIT,
    CreatedAt Datetime default getDate(),
    FOREIGN KEY (Prod_Id) REFERENCES ProductInformation(Prod_Id)
);

INSERT INTO Interaction (InteractionType, InteractionDetails)
VALUES
    ('View', 'User viewed a product'),
    ('Purchase', 'User made a purchase'),
    ('Rating', 'User gave a product rating'),
    ('Click', 'User clicked on a link'),
    ('AddToCart', 'User added a product to the cart'),
    ('Search', 'User performed a search'),
    ('Subscription', 'User subscribed to a service'),
    ('Feedback', 'User provided feedback'),
    ('Share', 'User shared a product'),
    ('Login', 'User logged in');

INSERT INTO UserInteractionJunction (userID, InteractionID)
VALUES
    (11, 1),
    (8, 4),
    (3, 3),
    (4, 4),
    (5, 5),
    (11, 2),
    (7, 7),
    (8, 8),
    (7, 2),
    (11, 10);

INSERT INTO ProductInteractionJunction (Prod_Id, InteractionID)
VALUES
    (18, 1),
    (202, 2),
    (3, 2),
    (4, 4),
    (119, 5),
    (26, 6),
    (309, 7),
    (404, 8),
    (9, 9),
    (90, 10);

INSERT INTO SeasonalTrends (TrendDescription)
VALUES
    ('Winter Fashion'),
    ('Summer Sale'),
    ('Spring Collection'),
    ('Monsoon Deals'),
    ('Autumn Specials'),
    ('Eid Festive Offers'),
    ('Back to School'),
    ('Valentine''s Day Discounts'),
    ('Black Friday Deals'),
    ('New Year Clearance');

INSERT INTO ProductSeasonalTrends (SeasonalTrendID, Prod_Id)
VALUES
    (10, 1),
    (2, 7),
    (3, 3),
    (4, 4),
    (5, 5),
    (4, 8),
    (7, 7),
    (8, 8),
    (10, 9),
    (10, 10);

INSERT INTO SalesTrends (TrendDescription)
VALUES
    ('Best Sellers of the Month'),
    ('Flash Sale Today'),
    ('Limited Stock Deals'),
    ('Top Rated Products'),
    ('Seasonal Clearance'),
    ('Exclusive Offers'),
    ('Customer Favorites'),
    ('New Arrivals'),
    ('Holiday Specials'),
    ('Clearance Sale');

INSERT INTO SalesTrends_Products (SalesTrendID, Prod_Id)
VALUES
    (10, 1),
    (2, 4),
    (6, 3),
    (4, 4),
    (5, 5),
    (7, 6),
    (7, 2),
    (8, 8),
    (9, 1),
    (10, 10); 
INSERT INTO SeasonalProducts (Prod_Id, SeasonStart, SeasonEnd, seasonalDescription, IsActive)
    VALUES
        (187, Convert(Date,'2023-12-01'),Convert(Date, '2024-02-29'), 'Winter Collection', 1),
        (211, Convert(Date,'2024-03-01'), Convert(Date,'2024-05-31'), 'Spring Styles', 1),
        (33, Convert(Date,'2024-06-01'), Convert(Date,'2024-08-31'), 'Summer Vibes', 1),
        (404, Convert(Date,'2024-09-01'), Convert(Date,'2024-11-30'), 'Autumn Essentials', 1),
        (5, Convert(Date,'2024-12-01'),Convert(Date, '2025-02-29'), 'Winter Clearance', 1),
        (16, Convert(Date,'2025-03-01'),Convert(Date, '2025-05-31'), 'Spring Fever', 1);

























































-- Create a trigger to update last_activity on every update
CREATE TRIGGER trg_UpdateLastActivity
ON UserSessions
AFTER UPDATE
AS
BEGIN
    UPDATE UserSessions
    SET last_activity = GETDATE()
    FROM UserSessions
    JOIN inserted ON UserSessions.session_id = inserted.session_id;
END;























CREATE TRIGGER trg_UpdateUserAccount
ON UserProfiles
AFTER UPDATE
AS
BEGIN
    UPDATE UserProfiles
    SET UpdatedAt = GETDATE()
    FROM inserted
    WHERE UserProfiles.userID = inserted.userID;
END;





CREATE TABLE Administration (
    AdminID INT PRIMARY KEY IDENTITY(1,1),
    userID INT,
    FOREIGN KEY (userID) REFERENCES UserProfiles(userID),
    adminRole Varchar(80),
    IsActive BIT
);
INSERT INTO Administration (userID, adminRole, IsActive)
VALUES
    (11, 'System Administrator', 1),
    (2, 'Database Administrator', 0),
    (3, 'Network Administrator', 1),
    (4, 'Security Administrator', 1),
    (8, 'Application Administrator', 1);