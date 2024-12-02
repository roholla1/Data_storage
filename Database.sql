CREATE TABLE address (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    zip_code VARCHAR(10),
    street VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE contact_person (
    phone_number VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE instructor (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    person_number VARCHAR(12) NOT NULL UNIQUE,
    can_teach_ensemble VARCHAR(10) NOT NULL, --boolean?
    address_id INT NOT NULL,
    CONSTRAINT FK_instructor_address FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE CASCADE
);

CREATE TABLE instrument_taught (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE place (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    room_capacity INT NOT NULL
);

CREATE TABLE pricing_scheme (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lesson_level VARCHAR(100) NOT NULL,
    lesson_type VARCHAR(100) NOT NULL,
    pricing_period TIMESTAMP(6) NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE student (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    skill_level VARCHAR(50) NOT NULL,
    monthly_payment_status VARCHAR(50),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(10),
    email VARCHAR(50) NOT NULL,
    person_number VARCHAR(12) NOT NULL UNIQUE,
    contact_person_phone_number VARCHAR(10) NOT NULL,
    address_id INT NOT NULL,
    CONSTRAINT FK_student_contact_person FOREIGN KEY (contact_person_phone_number) REFERENCES contact_person (phone_number) ON DELETE CASCADE,
    CONSTRAINT FK_student_address FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE CASCADE
);

CREATE TABLE student_sibling (
    student_id INT NOT NULL,
    sibling_id INT NOT NULL,
    PRIMARY KEY (student_id, sibling_id),
    CONSTRAINT FK_student_sibling_student FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    CONSTRAINT FK_student_sibling_sibling FOREIGN KEY (sibling_id) REFERENCES student (id) ON DELETE CASCADE
);

CREATE TABLE availability (
    start_time TIMESTAMP(6) NOT NULL,
    instructor_id INT NOT NULL,
    end_time TIMESTAMP(6) NOT NULL,
    PRIMARY KEY (start_time, instructor_id),
    CONSTRAINT FK_availability_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE
);

CREATE TABLE ensemble (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    target_genre VARCHAR(50) NOT NULL,
    schedule_time_slot TIMESTAMP(6) NOT NULL,
    min_enrollment INT NOT NULL,
    max_capacity INT NOT NULL,
    pricing_scheme_id INT NOT NULL,
    instructor_id INT NOT NULL,
    CONSTRAINT FK_ensemble_pricing_scheme FOREIGN KEY (pricing_scheme_id) REFERENCES pricing_scheme (id) ON DELETE CASCADE,
    CONSTRAINT FK_ensemble_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE
);

CREATE TABLE ensemble_place (
    place_id INT NOT NULL,
    ensemble_id INT NOT NULL,
    PRIMARY KEY (place_id, ensemble_id),
    CONSTRAINT FK_ensemble_place_place FOREIGN KEY (place_id) REFERENCES place (id) ON DELETE CASCADE,
    CONSTRAINT FK_ensemble_place_ensemble FOREIGN KEY (ensemble_id) REFERENCES ensemble (id) ON DELETE CASCADE
);

CREATE TABLE group_lesson (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    min_enrollment INT NOT NULL,
    schedule_time_slot TIMESTAMP(6) NOT NULL,
    max_capacity INT NOT NULL,
    instrument_taught INT NOT NULL,
    level VARCHAR(50) NOT NULL,
    pricing_scheme_id INT NOT NULL,
    instructor_id INT NOT NULL,
    CONSTRAINT fk_instrument_taught FOREIGN KEY (instrument_taught) REFERENCES instrument_taught (id) ON DELETE CASCADE,
    CONSTRAINT FK_group_lesson_pricing_scheme FOREIGN KEY (pricing_scheme_id) REFERENCES pricing_scheme (id) ON DELETE CASCADE,
    CONSTRAINT FK_group_lesson_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE
);

CREATE TABLE group_lesson_place (
    place_id INT NOT NULL,
    group_lesson_id INT NOT NULL,
    PRIMARY KEY (place_id, group_lesson_id),
    CONSTRAINT FK_group_lesson_place_place FOREIGN KEY (place_id) REFERENCES place (id) ON DELETE CASCADE,
    CONSTRAINT FK_group_lesson_place_group_lesson FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id) ON DELETE CASCADE
);

CREATE TABLE individual_lesson (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    appointment_time TIMESTAMP(6) NOT NULL,
    instrument_taught INT NOT NULL,
    level VARCHAR(50) NOT NULL,
    pricing_scheme_id INT NOT NULL,
    instructor_id INT NOT NULL,
    student_id INT NOT NULL,
    CONSTRAINT fk_instrument_taught FOREIGN KEY (instrument_taught) REFERENCES instrument_taught (id) ON DELETE CASCADE,
    CONSTRAINT FK_individual_lesson_pricing_scheme FOREIGN KEY (pricing_scheme_id) REFERENCES pricing_scheme (id) ON DELETE CASCADE,
    CONSTRAINT FK_individual_lesson_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE,
    CONSTRAINT FK_individual_lesson_student FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE
);

CREATE TABLE individual_lesson_place (
    place_id INT NOT NULL,
    individual_lesson_id INT NOT NULL,
    PRIMARY KEY (place_id, individual_lesson_id),
    CONSTRAINT FK_individual_lesson_place_place FOREIGN KEY (place_id) REFERENCES place (id) ON DELETE CASCADE,
    CONSTRAINT FK_individual_lesson_place_individual_lesson FOREIGN KEY (individual_lesson_id) REFERENCES individual_lesson (id) ON DELETE CASCADE
);

CREATE TABLE instructor_instrument_taught (
    instrument_taught_id INT NOT NULL,
    instructor_id INT NOT NULL,
    PRIMARY KEY (instrument_taught_id, instructor_id),
    CONSTRAINT FK_instructor_instrument_taught FOREIGN KEY (instrument_taught_id) REFERENCES instrument_taught (id) ON DELETE CASCADE,
    CONSTRAINT FK_instructor_instructor FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE
);

CREATE TABLE instrument (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    rental_price NUMERIC(10, 2) NOT NULL,
    brand VARCHAR(50),
    quantity_stock INT,
    instrument_name VARCHAR(50)
);

CREATE TABLE instruments (
    instrument_type VARCHAR(50) NOT NULL,
    ensemble_id INT NOT NULL,
    PRIMARY KEY (instrument_type, ensemble_id),
    CONSTRAINT FK_instruments_ensemble FOREIGN KEY (ensemble_id) REFERENCES ensemble (id) ON DELETE CASCADE
);

CREATE TABLE rental (
    start_date TIMESTAMP(6) NOT NULL,
    student_id INT NOT NULL,
    end_date TIMESTAMP(6) NOT NULL,
    instrument_id INT NOT NULL,
    PRIMARY KEY (start_date, student_id), --switch start_date to instrument_id as pkey?
    CONSTRAINT max_rental_duration CHECK (end_date <= start_date + INTERVAL '12 months'),
    CONSTRAINT FK_rental_student FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    CONSTRAINT FK_rental_instrument FOREIGN KEY (instrument_id) REFERENCES instrument (id) ON DELETE CASCADE 
);

CREATE TABLE student_ensemble (
    student_id INT NOT NULL,
    ensemble_id INT NOT NULL,
    PRIMARY KEY (student_id, ensemble_id),
    CONSTRAINT FK_student_ensemble_student FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    CONSTRAINT FK_student_ensemble_ensemble FOREIGN KEY (ensemble_id) REFERENCES ensemble (id) ON DELETE CASCADE
);

CREATE TABLE student_group_lesson (
    student_id INT NOT NULL,
    group_lesson_id INT NOT NULL,
    PRIMARY KEY (student_id, group_lesson_id),
    CONSTRAINT FK_student_group_lesson_student FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE,
    CONSTRAINT FK_student_group_lesson_group_lesson FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (id) ON DELETE CASCADE
);


CREATE TABLE historical_database (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lesson_type VARCHAR(50) NOT NULL,
    genre VARCHAR(50),
    instrument VARCHAR(50),
    lesson_price NUMERIC(10, 2) NOT NULL,
    lesson_date TIMESTAMP(6) NOT NULL,
    student_name VARCHAR(60) NOT NULL,
    student_email VARCHAR(50) NOT NULL
);