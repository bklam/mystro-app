-- constraints for mystro database

ALTER TABLE students
ADD CONSTRAINT students_families_id_fkey
FOREIGN KEY (family_id) REFERENCES families (id)
ON UPDATE CASCADE ON DELETE RESTRICT

-- add constraint for the teacher_id in students table

-- add constraints for families table

-- -- this constraint deals with note 8
-- ALTER TABLE medicines
-- ADD CONSTRAINT check_methods
-- CHECK (method in ('injection', 'oral', 'intravenous'));

-- ALTER TABLE visit_medicines
-- ADD CONSTRAINT check_discount_rate
-- CHECK (0 <= discount AND discount <= 1);
