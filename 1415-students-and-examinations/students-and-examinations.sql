# Write your MySQL query statement below
SELECT 
    s.student_id,
    s.student_name,
    su.subject_name,
    COUNT(e.student_id) as attended_exams
#select the columns required in the output and know that the student id column needs to be counted as attended exams hence the count command 

FROM Students s
    CROSS JOIN Subjects su
    LEFT JOIN Examinations e 
    ON s.student_id = e.student_id
    AND su.subject_name = e.subject_name
#Cross join is used to chain multiple columns together 

GROUP BY s.student_id,s.student_name,su.subject_name
ORDER BY s.student_id,s.student_name,su.subject_name

