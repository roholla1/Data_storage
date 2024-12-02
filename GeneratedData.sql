INSERT INTO address (zip_code, street, city) VALUES
    ('12345', 'Main Street', 'Springfield'),        --1
    ('54321', 'Broadway', 'Metropolis'),            --2
    ('11223', 'Elm Street', 'Gotham'),              --3
    ('33445', 'Oak Street', 'Star City'),           --4
    ('55667', 'Pine Street', 'Central City'),       --5
    ('77889', 'Maple Avenue', 'Smallville'),        --6
    ('99001', 'Willow Lane', 'Blüdhaven'),          --7
    ('11223', 'Birch Road', 'Coast City'),          --8
    ('33445', 'Cedar Court', 'Atlantis'),           --9
    ('55667', 'Aspen Boulevard', 'National City'),  --10
    ('77889', 'Park Avenue', 'Metropolis'),         --11
    ('99001', 'Lakeside Drive', 'Springfield'),     --12
    ('11223', 'Highland Road', 'Gotham'),           --13
    ('33445', 'Sunset Boulevard', 'Star City'),     --14
    ('55667', 'Riverbank Street', 'Central City'),  --15
    ('67890', 'Maple Avenue', 'Star City'),         --16
    ('45678', 'Pine Street', 'Central City'),       --17
    ('98765', 'Oak Drive', 'Smallville'),           --18
    ('13579', 'Willow Lane', 'Blüdhaven'),          --19
    ('24680', 'Birch Road', 'Coast City'),          --20
    ('19283', 'Cedar Court', 'Atlantis');           --21

INSERT INTO instructor (first_name, last_name, phone_number, email, person_number, can_teach_ensemble, address_id) VALUES
    ('Sam', 'Anderson', '1212121212', 'sam.anderson@example.com', '123456789012', 'Yes', 1), --1
    ('Tom', 'Baker', '2323232323', 'tom.baker@example.com', '987654321098', 'No', 2),        --2
    ('Lisa', 'Carter', '3434343434', 'lisa.carter@example.com', '123123123123', 'Yes', 3),   --3
    ('Mia', 'Diaz', '4545454545', 'mia.diaz@example.com', '321321321321', 'No', 4),          --4
    ('Noah', 'Evans', '5656565656', 'noah.evans@example.com', '456456456456', 'Yes', 5);     --5

    INSERT INTO instrument_taught (name) VALUES
    ('Piano'),      --1
    ('Guitar'),     --2
    ('Violin'),     --3
    ('Drums'),      --4
    ('Flute'),      --5
    ('Saxophone'),  --6
    ('Trumpet'),    --7
    ('Cello'),      --8
    ('Clarinet'),   --9
    ('Trombone');   --10

    INSERT INTO instructor_instrument_taught (instrument_taught_id, instructor_id) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 3),
    (7, 4),
    (8, 4),
    (9, 5),
    (10, 5);

INSERT INTO contact_person (phone_number, first_name, last_name, email) VALUES
    ('1111111111', 'John', 'Doe', 'john.doe@example.com'),                 --1
    ('2222222222', 'Jane', 'Smith', 'jane.smith@example.com'),             --2
    ('3333333333', 'Alice', 'Johnson', 'alice.johnson@example.com'),       --3
    ('8888888888', 'Grace', 'Garcia', 'grace.garcia@example.com'),         --4
    ('9999999999', 'Hank', 'Moore', 'hank.moore@example.com'),             --5
    ('0000000000', 'Ivy', 'Taylor', 'ivy.taylor@example.com'),             --6
    ('1010101010', 'Liam', 'Harris', 'liam.harris@example.com'),           --7
    ('2020202020', 'Olivia', 'Clark', 'olivia.clark@example.com'),         --8
    ('3030303030', 'Emma', 'Lewis', 'emma.lewis@example.com'),             --9
    ('4040404040', 'Ava', 'Walker', 'ava.walker@example.com'),             --10
    ('5050505050', 'Sophia', 'Hall', 'sophia.hall@example.com'),           --11
    ('6060606060', 'Isabella', 'Allen', 'isabella.allen@example.com'),     --12
    ('7070707070', 'Mia', 'Young', 'mia.young@example.com'),               --13
    ('8080808080', 'Charlotte', 'King', 'charlotte.king@example.com'),     --14
    ('9090909090', 'Amelia', 'Wright', 'amelia.wright@example.com'),       --15
    ('0101010101', 'Harper', 'Scott', 'harper.scott@example.com');         --16

INSERT INTO place (room_capacity) VALUES
    (6),    --1
    (10),   --2
    (15),   --3
    (20),   --4
    (25),   --5
    (30),   --6
    (35),   --7
    (40),   --8
    (45),   --9
    (50);   --10

INSERT INTO pricing_scheme (lesson_level, lesson_type, pricing_period, price) VALUES
    ('Beginner', 'Individual', '2024-01-01 00:00:00', 25.0),        --1
    ('Beginner', 'Group', '2024-01-01 00:00:00', 30.0),             --2
    ('Beginner', 'Ensemble', '2024-01-01 00:00:00', 35.0),          --3
    ('Intermediate', 'Individual', '2024-01-01 00:00:00', 25.0),    --4
    ('Intermediate', 'Group', '2024-01-01 00:00:00', 30.0),         --5
    ('Intermediate', 'Ensemble', '2024-01-01 00:00:00', 35.0),      --6
    ('Advanced', 'Individual', '2024-01-01 00:00:00', 50.0),        --7
    ('Advanced', 'Group', '2024-01-01 00:00:00', 55.0),             --8
    ('Advanced', 'Ensemble', '2024-01-01 00:00:00', 60.0);          --9

INSERT INTO student (skill_level, monthly_payment_status, first_name, last_name, phone_number, email, person_number, contact_person_phone_number, address_id) VALUES
    ('Beginner', 'Paid', 'Adam', 'Young', '1213141516', 'adam.young@example.com', '123321123321', '1111111111', 6),                 --1
    ('Intermediate', 'Unpaid', 'Bella', 'Zane', '2233445566', 'bella.zane@example.com', '234432234432', '1111111111', 6),           --2
    ('Advanced', 'Paid', 'Charlie', 'Watson', '3344556677', 'charlie.watson@example.com', '345543345543', '2222222222', 7),         --3
    ('Beginner', 'Unpaid', 'Daisy', 'Parker', '4455667788', 'daisy.parker@example.com', '456654456654', '2222222222', 7),           --4
    ('Intermediate', 'Paid', 'Ethan', 'Ray', '5566778899', 'ethan.ray@example.com', '567765567765', '2222222222', 7),               --5
    ('Advanced', 'Unpaid', 'Fiona', 'Scott', '6677889900', 'fiona.scott@example.com', '678876678876', '3333333333', 8),             --6
    ('Beginner', 'Paid', 'George', 'Upton', '7788990011', 'george.upton@example.com', '789987789987', '3333333333', 8),             --7
    ('Intermediate', 'Unpaid', 'Holly', 'Tanner', '8899001122', 'holly.tanner@example.com', '890098890098', '8888888888', 9),       --8
    ('Advanced', 'Paid', 'Isaac', 'Wells', '9900112233', 'isaac.wells@example.com', '901209012090', '9999999999', 10),              --9
    ('Beginner', 'Unpaid', 'Julia', 'Vance', '0001112223', 'julia.vance@example.com', '012301230123', '0000000000', 11),            --10
    ('Beginner', 'Paid', 'Michael', 'Jordan', '9876543210', 'michael.jordan@example.com', '123450987654', '1010101010', 12),        --11
    ('Intermediate', 'Unpaid', 'Sarah', 'Connor', '8765432109', 'sarah.connor@example.com', '234561098765', '2020202020', 13),      --12
    ('Advanced', 'Paid', 'David', 'Beckham', '7654321098', 'david.beckham@example.com', '345672109876', '3030303030', 14),          --13
    ('Beginner', 'Unpaid', 'Elena', 'Gilbert', '6543210987', 'elena.gilbert@example.com', '456783210987', '4040404040', 15),        --14
    ('Intermediate', 'Paid', 'Tom', 'Holland', '5432109876', 'tom.holland@example.com', '567894321098', '5050505050', 16),          --15
    ('Advanced', 'Unpaid', 'Kevin', 'Hart', '4321098765', 'kevin.hart@example.com', '678905432109', '6060606060', 17),              --16
    ('Beginner', 'Paid', 'Laura', 'Bush', '3210987654', 'laura.bush@example.com', '789016543210', '7070707070', 18),                --17
    ('Intermediate', 'Unpaid', 'Mark', 'Twain', '2109876543', 'mark.twain@example.com', '890127654321', '8080808080', 19),          --18
    ('Advanced', 'Paid', 'Nina', 'Simone', '1098765432', 'nina.simone@example.com', '901238765432', '9090909090', 20),              --19
    ('Beginner', 'Unpaid', 'Oscar', 'Wilde', '0987654321', 'oscar.wilde@example.com', '012349876543', '0101010101', 21);            --20
    

INSERT INTO student_sibling (student_id, sibling_id) VALUES
    (1, 2),

    (3, 4),
    (5, 4),
    (3, 5),

    (6, 7);


INSERT INTO availability (start_time, instructor_id, end_time) VALUES
    ('2024-01-01 09:00:00', 1, '2024-01-01 12:00:00'),
    ('2024-01-02 13:00:00', 1, '2024-01-02 16:00:00'),
    ('2024-01-03 09:00:00', 2, '2024-01-03 12:00:00'),
    ('2024-01-04 13:00:00', 2, '2024-01-04 16:00:00'),
    ('2024-01-05 09:00:00', 3, '2024-01-05 12:00:00'),
    ('2024-01-06 13:00:00', 3, '2024-01-06 16:00:00'),
    ('2024-01-07 09:00:00', 4, '2024-01-07 12:00:00'),
    ('2024-01-08 13:00:00', 5, '2024-01-08 16:00:00'),
    ('2024-01-09 09:00:00', 5, '2024-01-09 12:00:00'),
    ('2024-01-10 13:00:00', 5, '2024-01-10 16:00:00');

INSERT INTO ensemble (target_genre, schedule_time_slot, min_enrollment, max_capacity, pricing_scheme_id, instructor_id) VALUES
    ('Jazz', '2024-01-15 18:00:00', 5, 20, 3, 1),           --1
    ('Classical', '2024-01-16 18:00:00', 5, 20, 3, 3),      --2
    ('Rock', '2024-01-17 18:00:00', 5, 20, 3, 5),           --3
    ('Pop', '2024-02-18 18:00:00', 5, 25, 6, 1),            --4
    ('Folk', '2024-02-19 18:00:00', 5, 25, 6, 3),           --5
    ('Blues', '2024-03-20 18:00:00', 5, 25, 6, 5),          --6
    ('Hip-Hop', '2024-03-21 18:00:00', 5, 30, 9, 1),        --7
    ('Reggae', '2024-03-22 18:00:00', 5, 30, 9, 3),         --8
    ('Country', '2024-03-23 18:00:00', 5, 30, 9, 5),        --9
    ('Metal', '2024-04-24 18:00:00', 5, 30, 9, 1),          --10
    ('EDM', '2024-04-24 18:00:00', 5, 30, 9, 1),            --11
    ('Jazz', '2024-05-01 18:00:00', 5, 20, 3, 3),           --12
    ('Classical', '2024-05-04 18:00:00', 5, 25, 6, 3),      --13
    ('Rock', '2024-05-07 18:00:00', 5, 30, 9, 5),           --14
    ('Blues', '2024-05-10 18:00:00', 5, 30, 9, 1),          --15
    ('Pop', '2024-05-13 18:00:00', 5, 35, 6, 1),            --16
    ('Folk', '2024-05-16 18:00:00', 5, 35, 6, 3),           --17
    ('Hip-Hop', '2024-05-19 18:00:00', 5, 35, 6, 5),        --18
    ('Reggae', '2024-05-22 18:00:00', 5, 40, 9, 1),         --19
    ('Country', '2024-05-25 18:00:00', 5, 40, 9, 3),        --20
    ('Metal', '2024-05-28 18:00:00', 5, 40, 9, 5),          --21
    ('Jazz', '2024-06-01 18:00:00', 5, 20, 3, 1),           --22
    ('Classical', '2024-06-04 18:00:00', 5, 25, 6, 3),      --23
    ('Rock', '2024-06-07 18:00:00', 5, 30, 9, 5),           --24
    ('Blues', '2024-06-10 18:00:00', 5, 30, 9, 1),          --25
    ('Pop', '2024-06-13 18:00:00', 5, 35, 6, 1),            --26
    ('Folk', '2024-06-16 18:00:00', 5, 35, 6, 3),           --27
    ('Hip-Hop', '2024-06-19 18:00:00', 5, 35, 6, 5),        --28
    ('Reggae', '2024-06-22 18:00:00', 5, 40, 9, 1),         --29
    ('Country', '2024-06-25 18:00:00', 5, 40, 9, 3),        --30
    ('Metal', '2024-06-28 18:00:00', 5, 40, 9, 5),          --31
    ('Jazz', '2024-07-01 18:00:00', 5, 20, 3, 1),           --32
    ('Classical', '2024-07-04 18:00:00', 5, 25, 6, 3),      --33
    ('Rock', '2024-07-07 18:00:00', 5, 30, 9, 5),           --34
    ('Blues', '2024-07-10 18:00:00', 5, 30, 9, 1),          --35
    ('Pop', '2024-07-13 18:00:00', 5, 35, 6, 1),            --36
    ('Folk', '2024-07-16 18:00:00', 5, 35, 6, 3),           --37
    ('Hip-Hop', '2024-07-19 18:00:00', 5, 35, 6, 5),        --38
    ('Reggae', '2024-07-22 18:00:00', 5, 40, 9, 1),         --39
    ('Country', '2024-07-25 18:00:00', 5, 40, 9, 3),        --40
    ('Metal', '2024-07-28 18:00:00', 5, 40, 9, 5),          --41
    ('Jazz', '2024-08-01 18:00:00', 5, 20, 3, 1),           --42
    ('Classical', '2024-08-04 18:00:00', 5, 25, 6, 3),      --43
    ('Rock', '2024-08-07 18:00:00', 5, 30, 9, 5),           --44
    ('Blues', '2024-08-10 18:00:00', 5, 30, 9, 1),          --45
    ('Pop', '2024-08-13 18:00:00', 5, 35, 6, 1),            --46
    ('Folk', '2024-08-16 18:00:00', 5, 35, 6, 3),           --47
    ('Hip-Hop', '2024-08-19 18:00:00', 5, 35, 6, 5),        --48
    ('Reggae', '2024-08-22 18:00:00', 5, 40, 9, 1),         --49
    ('Country', '2024-08-25 18:00:00', 5, 40, 9, 3),        --50
    ('Metal', '2024-08-28 18:00:00', 5, 40, 9, 5),          --51
    ('Jazz', '2024-09-01 18:00:00', 5, 20, 3, 1),           --52
    ('Classical', '2024-09-04 18:00:00', 5, 25, 6, 3),      --53
    ('Rock', '2024-09-07 18:00:00', 5, 30, 9, 5),           --54
    ('Blues', '2024-09-10 18:00:00', 5, 30, 9, 1),          --55
    ('Pop', '2024-09-13 18:00:00', 5, 35, 6, 1),            --56
    ('Folk', '2024-09-16 18:00:00', 5, 35, 6, 3),           --57
    ('Hip-Hop', '2024-09-19 18:00:00', 5, 35, 6, 5),        --58
    ('Reggae', '2024-09-22 18:00:00', 5, 40, 9, 1),         --59
    ('Country', '2024-09-25 18:00:00', 5, 40, 9, 3),        --60
    ('Metal', '2024-09-28 18:00:00', 5, 40, 9, 5),          --61
    ('Jazz', '2024-10-01 18:00:00', 5, 20, 3, 1),           --62
    ('Classical', '2024-10-04 18:00:00', 5, 25, 6, 3),      --63
    ('Rock', '2024-10-07 18:00:00', 5, 30, 9, 5),           --64
    ('Blues', '2024-10-10 18:00:00', 5, 30, 9, 1),          --65
    ('Pop', '2024-10-13 18:00:00', 5, 35, 6, 1),            --66
    ('Folk', '2024-10-16 18:00:00', 5, 35, 6, 3),           --67
    ('Hip-Hop', '2024-10-19 18:00:00', 5, 35, 6, 5),        --68
    ('Reggae', '2024-10-22 18:00:00', 5, 40, 9, 1),         --69
    ('Country', '2024-10-25 18:00:00', 5, 40, 9, 3),        --70
    ('Metal', '2024-10-28 18:00:00', 5, 40, 9, 5),          --71
    ('Jazz', '2024-11-01 18:00:00', 5, 20, 3, 1),           --72
    ('Classical', '2024-11-04 18:00:00', 5, 25, 6, 3),      --73
    ('Rock', '2024-11-07 18:00:00', 5, 30, 9, 5),           --74
    ('Blues', '2024-11-10 18:00:00', 5, 30, 9, 1),          --75
    ('Pop', '2024-11-13 18:00:00', 5, 35, 6, 1),            --76
    ('Folk', '2024-11-16 18:00:00', 5, 35, 6, 3),           --77
    ('Hip-Hop', '2024-11-19 18:00:00', 5, 35, 6, 5),        --78
    ('Reggae', '2024-11-22 18:00:00', 5, 40, 9, 1),         --79
    ('Country', '2024-11-25 18:00:00', 5, 40, 9, 3),        --80
    ('Metal', '2024-11-28 18:00:00', 5, 40, 9, 5),          --81
    ('Jazz', '2024-12-02 18:00:00', 5, 20, 3, 1),           --82
    ('Classical', '2024-12-04 18:00:00', 5, 25, 6, 3),      --83
    ('Rock', '2024-12-06 18:00:00', 5, 30, 9, 5),           --84
    ('Blues', '2024-12-07 18:00:00', 5, 30, 9, 1),          --85
    ('Pop', '2024-12-13 18:00:00', 5, 35, 6, 1),            --86
    ('Folk', '2024-12-16 18:00:00', 5, 35, 6, 3),           --87
    ('Hip-Hop', '2024-12-19 18:00:00', 5, 35, 6, 5),        --88
    ('Reggae', '2024-12-22 18:00:00', 5, 40, 9, 1),         --89
    ('Country', '2024-12-25 18:00:00', 5, 40, 9, 3),        --90
    ('Metal', '2024-12-28 18:00:00', 5, 40, 9, 5),          --91
    ('Metal', '2024-12-02 18:00:00', 5, 22, 3, 1),          --92
    ('Classical', '2024-12-03 18:00:00', 5, 21, 6, 3),      --93
    ('Rock', '2024-12-09 18:00:00', 5, 20, 9, 5),           --94
    ('Blues', '2024-12-10 18:00:00', 5, 19, 9, 1),          --95
    ('Jazz', '2024-12-11 18:00:00', 5, 18, 3, 1),           --96
    ('Classical', '2024-12-12 18:00:00', 5, 17, 6, 3),      --97
    ('Rock', '2024-12-13 18:00:00', 1, 5, 9, 5),            --98
    ('Blues', '2024-12-14 18:00:00', 5, 15, 9, 1);          --99
    

-- Assign students to Ensemble 98 (Full)
INSERT INTO student_ensemble (student_id, ensemble_id) VALUES
    (1, 97),
    (2, 97),
    (3, 97),
    (4, 97),
    (5, 97),
    (6, 97),
    (7, 97),
    (8, 97),
    (9, 97),
    (10, 97),
    (11, 97),
    (12, 97),
    (13, 97),
    (14, 97),
    (15, 97),
    (16, 97),
    (17, 97);


-- Assign students to Ensembles with Many Free Spots
-- Ensemble 98 4/5
INSERT INTO student_ensemble (student_id, ensemble_id) VALUES
    (17, 98),
    (18, 98),
    (19, 98),
    (20, 98);

-- Ensemble 99 13/15
INSERT INTO student_ensemble (student_id, ensemble_id) VALUES
    (1, 99),
    (2, 99),
    (3, 99),
    (4, 99),
    (5, 99),
    (6, 99),
    (7, 99),
    (8, 99),
    (9, 99),
    (10, 99),
    (11, 99),
    (12, 99),
    (13, 99);



--lvl to table?
INSERT INTO group_lesson (min_enrollment, schedule_time_slot, max_capacity, instrument_taught, level, pricing_scheme_id, instructor_id) VALUES
    (2, '2024-02-01 10:00:00', 6, '1', 'Beginner', 2, 1),           --1
    (2, '2024-02-02 11:00:00', 6, '2', 'Intermediate', 5, 2),       --2
    (2, '2024-03-03 12:00:00', 6, '3', 'Advanced', 8, 3),           --3
    (2, '2024-03-04 13:00:00', 8, '4', 'Beginner', 2, 4),           --4    
    (2, '2024-04-05 14:00:00', 8, '5', 'Intermediate', 5, 5),       --5
    (2, '2024-04-06 15:00:00', 8, '6', 'Advanced', 8, 1),           --6
    (2, '2024-05-07 16:00:00', 10, '7', 'Beginner', 2, 2),          --7
    (2, '2024-05-08 17:00:00', 10, '8', 'Intermediate', 5, 3),      --8
    (2, '2024-06-09 18:00:00', 10, '9', 'Advanced', 8, 4),          --9
    (2, '2024-06-10 19:00:00', 10, '10', 'Beginner', 2, 5),         --10
    (2, '2024-07-01 10:00:00', 6, '1', 'Beginner', 2, 1),           --11
    (2, '2024-07-02 11:00:00', 6, '2', 'Intermediate', 5, 2),       --12
    (2, '2024-08-03 12:00:00', 6, '3', 'Advanced', 8, 3),           --13
    (2, '2024-08-04 13:00:00', 8, '4', 'Beginner', 2, 4),           --14    
    (2, '2024-09-05 14:00:00', 8, '5', 'Intermediate', 5, 5),       --15
    (2, '2024-09-06 15:00:00', 8, '6', 'Advanced', 8, 1),           --16
    (2, '2024-10-07 16:00:00', 10, '7', 'Beginner', 2, 2),          --17
    (2, '2024-10-08 17:00:00', 10, '8', 'Intermediate', 5, 3),      --18
    (2, '2024-11-09 18:00:00', 10, '9', 'Advanced', 8, 4),          --19
    (2, '2024-11-10 19:00:00', 10, '10', 'Beginner', 2, 5),         --20
    (2, '2024-12-01 10:00:00', 6, '1', 'Beginner', 2, 1),           --21
    (2, '2024-12-02 11:00:00', 6, '2', 'Intermediate', 5, 2),       --22
    (2, '2024-12-03 12:00:00', 6, '3', 'Advanced', 8, 3),           --23
    (2, '2024-12-04 13:00:00', 8, '4', 'Beginner', 2, 4),           --24    
    (2, '2024-12-05 14:00:00', 8, '5', 'Intermediate', 5, 5),       --25
    (2, '2024-12-06 15:00:00', 8, '6', 'Advanced', 8, 1),           --26
    (2, '2024-12-07 16:00:00', 10, '7', 'Beginner', 2, 2),          --27
    (2, '2024-12-08 17:00:00', 10, '8', 'Intermediate', 5, 3),      --28
    (2, '2024-12-09 18:00:00', 10, '9', 'Advanced', 8, 4),          --29
    (2, '2024-12-10 19:00:00', 10, '10', 'Beginner', 2, 5);         --30

INSERT INTO student_group_lesson (student_id, group_lesson_id) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 3),
    (8, 3),
    (9, 3),
    (10, 4),
    (11, 4),
    (12, 4),
    (13, 5),
    (14, 5),
    (15, 5),
    (16, 6),
    (17, 6),
    (18, 6),
    (19, 7),
    (20, 7),
    (1, 7),
    (2, 8),
    (3, 8),
    (4, 8),
    (5, 9),
    (6, 9),
    (7, 9),
    (8, 10),
    (9, 10),
    (10, 10);

INSERT INTO individual_lesson (appointment_time, instrument_taught, level, pricing_scheme_id, instructor_id, student_id) VALUES
    ('2024-03-01 10:00:00', '1', 'Beginner', 1, 1, 1),          --1
    ('2024-03-02 11:00:00', '2', 'Intermediate', 4, 2, 2),      --2
    ('2024-03-03 12:00:00', '3', 'Advanced', 7, 3, 3),          --3
    ('2024-03-04 13:00:00', '4', 'Beginner', 1, 4, 4),          --4
    ('2024-03-05 14:00:00', '5', 'Intermediate', 4, 5, 5),      --5
    ('2024-03-06 15:00:00', '6', 'Advanced', 7, 1, 6),          --6
    ('2024-03-07 16:00:00', '7', 'Beginner', 1, 2, 7),          --7
    ('2024-03-08 17:00:00', '8', 'Intermediate', 4, 3, 8),      --8
    ('2024-03-09 18:00:00', '9', 'Advanced', 7, 4, 9),          --9
    ('2024-03-10 19:00:00', '10', 'Beginner', 1, 5, 10),        --10
    ('2024-03-11 10:00:00', '1', 'Beginner', 1, 1, 11),          --11
    ('2024-03-12 11:00:00', '2', 'Intermediate', 4, 2, 12),      --12
    ('2024-03-13 12:00:00', '3', 'Advanced', 7, 3, 13),          --13
    ('2024-03-14 13:00:00', '4', 'Beginner', 1, 4, 14),          --14
    ('2024-03-15 14:00:00', '5', 'Intermediate', 4, 5, 15),      --15
    ('2024-03-16 15:00:00', '6', 'Advanced', 7, 1, 16),          --16
    ('2024-03-17 16:00:00', '7', 'Beginner', 1, 2, 17),          --17
    ('2024-03-18 17:00:00', '8', 'Intermediate', 4, 3, 18),      --18
    ('2024-03-19 18:00:00', '9', 'Advanced', 7, 4, 19),          --19
    ('2024-03-20 19:00:00', '10', 'Beginner', 1, 5, 20);         --20

INSERT INTO instrument (rental_price, brand, quantity_stock, instrument_name) VALUES
    (12.99, 'Yamaha', 10, 'Acoustic Guitar'),       --1
    (15.49, 'Fender', 5, 'Electric Guitar'),        --2
    (10.00, 'Casio', 8, 'Keyboard'),                --3
    (9.99, 'Roland', 7, 'Drum Set'),                --4
    (7.99, 'Yamaha', 12, 'Flute'),                  --5
    (13.50, 'Selmer', 6, 'Saxophone'),              --6
    (11.25, 'Pearl', 9, 'Trumpet'),                 --7
    (8.50, 'Hohner', 15, 'Harmonica'),              --8
    (20.00, 'Steinway', 2, 'Grand Piano'),          --9
    (5.99, 'Dunlop', 20, 'Capo');                   --10

INSERT INTO rental (start_date, student_id, end_date, instrument_id) VALUES
    ('2024-01-01 10:00:00', 1, '2024-05-01 10:00:00', 1),       --1
    ('2024-01-01 10:01:00', 1, '2024-05-01 10:00:00', 2),       --2
    ('2024-01-02 10:00:00', 2, '2024-03-02 10:00:00', 3),       --3
    ('2024-01-05 10:00:00', 2, '2024-03-05 10:00:00', 4),       --4
    ('2024-01-10 10:00:00', 3, '2024-02-10 10:00:00', 5),       --5
    ('2024-01-12 10:00:00', 4, '2024-04-12 10:00:00', 6),       --6
    ('2024-01-15 10:00:00', 5, '2024-05-15 10:00:00', 7),       --7
    ('2024-01-15 10:01:00', 5, '2024-05-15 10:00:00', 8),       --8
    ('2024-01-15 10:00:00', 6, '2024-06-15 10:00:00', 9),       --9
    ('2024-01-22 10:00:00', 7, '2024-08-22 10:00:00', 10),      --10
    ('2024-01-22 10:01:00', 7, '2024-08-22 10:00:00', 1),       --11
    ('2024-01-23 10:00:00', 8, '2024-11-23 10:00:00', 2),       --12
    ('2024-01-24 10:00:00', 8, '2024-11-24 10:00:00', 3),       --13
    ('2024-01-26 10:00:00', 9, '2024-01-26 10:00:00', 4),       --14
    ('2024-02-01 10:00:00', 10, '2024-03-01 10:00:00', 5),      --15
    ('2024-02-02 10:00:00', 10, '2024-03-02 10:00:00', 6),      --16
    ('2024-02-03 10:00:00', 12, '2024-06-03 10:00:00', 7),      --17
    ('2024-02-04 10:00:00', 13, '2024-07-04 10:00:00', 8),      --18
    ('2024-02-05 10:00:00', 14, '2024-04-05 10:00:00', 9),      --19
    ('2024-02-06 10:00:00', 16, '2024-05-06 10:00:00', 10);     --20




/*
INSERT INTO ensemble_place (place_id, ensemble_id) VALUES
    (4, 1),
    (4, 2),
    (4, 3),
    (5, 4),
    (5, 5),
    (5, 6),
    (6, 7),
    (6, 8),
    (6, 9),
    (6, 10);
*/

/*
INSERT INTO group_lesson_place (place_id, group_lesson_id) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (2, 10);
*/

/*INSERT INTO individual_lesson_place (place_id, individual_lesson_id) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (1, 7),
    (1, 8),
    (1, 9),
    (1, 10);
*/

/*
needed?
INSERT INTO instruments (instrument_type, ensemble_id) VALUES
    ('Violin', 1),
    ('Cello', 1),
    ('Flute', 1),
    ('Clarinet', 1),
    ('Trumpet', 3),
    ('Trombone', 3),
    ('Guitar', 4),
    ('Bass Guitar', 4),
    ('Piano', 5),
    ('Drums', 5);
    ('Violin', 1),
    ('Cello', 1),
    ('Flute', 2),
    ('Clarinet', 2),
    ('Trumpet', 3),
    ('Trombone', 3),
    ('Guitar', 4),
    ('Bass Guitar', 4),
    ('Piano', 5),
    ('Drums', 5);
    ('Violin', 1),
    ('Cello', 1),
    ('Flute', 2),
    ('Clarinet', 2),
    ('Trumpet', 3),
    ('Trombone', 3),
    ('Guitar', 4),
    ('Bass Guitar', 4),
    ('Piano', 5),
    ('Drums', 5);
*/
/*

*/
/*
INSERT INTO student_group_lesson (student_id, group_lesson_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    */



INSERT INTO historical_database (
    lesson_type, genre, instrument, lesson_price, lesson_date, student_name, student_email
)
SELECT 
    'individual' AS lesson_type,
    '' AS genre,
    it.name AS instrument,
    ps.price AS lesson_price,
    indv.appointment_time AS lesson_date,
    CONCAT(student.first_name, ' ', student.last_name) AS student_name,
    student.email AS student_email
FROM 
    student
JOIN individual_lesson indv ON indv.student_id = student.id
JOIN instrument_taught it ON it.id = indv.instrument_taught
JOIN pricing_scheme ps ON ps.id = indv.pricing_scheme_id
UNION ALL
SELECT 
    'group' AS lesson_type,
    '' AS genre,
    it.name AS instrument,
    ps.price AS lesson_price,
    grp.schedule_time_slot AS lesson_date,
    CONCAT(student.first_name, ' ', student.last_name) AS student_name,
    student.email AS student_email
FROM 
    student
JOIN student_group_lesson s ON s.student_id = student.id
JOIN group_lesson grp ON grp.id = s.group_lesson_id
JOIN instrument_taught it ON it.id = grp.instrument_taught
JOIN pricing_scheme ps ON ps.id = grp.pricing_scheme_id
UNION ALL
SELECT 
    'ensemble' AS lesson_type,
    COALESCE(ensemble.target_genre, '') AS genre,
    '' AS instrument,
    ps.price AS lesson_price,
    ensemble.schedule_time_slot AS lesson_date,
    CONCAT(student.first_name, ' ', student.last_name) AS student_name,
    student.email AS student_email
FROM 
    student
JOIN student_ensemble e ON e.student_id = student.id
JOIN ensemble ON ensemble.id = e.ensemble_id
JOIN pricing_scheme ps ON ps.id = ensemble.pricing_scheme_id;
