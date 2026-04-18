1.---The number of users per show on channel 2 in desc
SELECT channel2,
COUNT(UserID0) AS Channel2_viewership
FROM `workspace`.`default`.`viewership`
GROUP BY Channel2
ORDER BY Channel2_viewership desc;



2.---Viewership by province
SELECT province,
COUNT(UserID) as User_count_by_province
FROM `workspace`.`default`.`bright_tv_dataset_1774`
GROUP BY province
ORDER BY user_count_by_province DESC;


3.---Most Watched Shows by Viewers
SELECT channel2,
COUNT(UserID0) AS channel2_viewership
FROM `workspace`.`default`.`viewership`
GROUP BY Channel2
ORDER BY channel2_viewership DESC;




4.---Combining User profile table & viewership table
SELECT * 
FROM `workspace`.`default`.`user_profiles`
LIMIT 1000;






5.---Joining the two tables(userprofile & viewership) on full outer join
SELECT A.UserID,
       A.Gender,
       A.Race,
       A.Age,
       A.Province,
       B.Channel2,
       B.RecordDate2,
       B.`Duration 2`
FROM `workspace`.`default`.`user_profiles` AS A
FULL OUTER JOIN `workspace`.`default`.`viewership` AS B
ON A.UserID = B.UserID0;






6.---Count number of unique user profiles
SELECT COUNT(DISTINCT UserID) AS distinct_user
FROM `workspace`.`default`.`user_profiles`;






7.----Viewership Split By Age Buckets

SELECT
    CASE
        WHEN AGE IS NULL THEN 'UNKNOWN'
        WHEN AGE < 13 THEN 'CHILD'
        WHEN AGE >= 13 AND AGE < 18 THEN 'TEEN'
        WHEN AGE >= 18 AND AGE < 30 THEN 'YOUNG ADULT'
        WHEN AGE >= 30 AND AGE < 50 THEN 'ADULT'
        WHEN AGE >= 50 AND AGE < 65 THEN 'MIDDLE AGE'
        WHEN AGE >= 65 THEN 'SENIOR'
        ELSE 'UNKNOWN'
    END AS Age_Group,
    
    COUNT(UserId) AS User_Count

FROM `workspace`.`default`.`bright_tv_dataset_1774`

GROUP BY
    CASE
        WHEN AGE IS NULL THEN 'UNKNOWN'
        WHEN AGE < 13 THEN 'CHILD'
        WHEN AGE >= 13 AND AGE < 18 THEN 'TEEN'
        WHEN AGE >= 18 AND AGE < 30 THEN 'YOUNG ADULT'
        WHEN AGE >= 30 AND AGE < 50 THEN 'ADULT'
        WHEN AGE >= 50 AND AGE < 65 THEN 'MIDDLE AGE'
        WHEN AGE >= 65 THEN 'SENIOR'
        ELSE 'UNKNOWN'
    END;




8.-----Viewership By Time Slots
SELECT
      CASE
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '05:00:00' AND '11:59:59' THEN 'MORNING_VIEWING'
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '12:00:00' AND '17:59:59' THEN 'AFTERNOON_VIEWING'
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '18:00:00' AND '23:59:59' THEN 'EVENING_VIEWING'
      ELSE 'MIDNIGHT_VIEWING'
END AS VIEWING_SLOTS,
COUNT(UserID0) AS USER_COUNT
FROM `workspace`.`default`.`viewership`
GROUP BY
      CASE
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '05:00:00' AND '11:59:59' THEN 'MORNING_VIEWING'
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '12:00:00' AND '17:59:59' THEN 'AFTERNOON_VIEWING'
      WHEN TO_CHAR(RecordDate2, 'HH:mm:ss') BETWEEN '18:00:00' AND '23:59:59' THEN 'EVENING_VIEWING'
      ELSE 'MIDNIGHT_VIEWING'
END
ORDER BY USER_COUNT DESC;

---Viewership By Gender
SELECT GENDER,COUNT(USERID) AS MALE_FEMALE_SPLIT
FROM `workspace`.`default`.`bright_tv_dataset_1774`
GROUP BY GENDER
ORDER BY MALE_FEMALE_SPLIT DESC;
