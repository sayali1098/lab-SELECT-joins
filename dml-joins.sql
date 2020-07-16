SELECT * FROM role INNER JOIN user_new
ON role.id=user_new.id
ORDER BY user_new.name ASC, role.name ASC;

SELECT * FROM role
RIGHT JOIN user_new
ON role.id=user_new.id
ORDER BY user_new.name ASC, role.name ASC;

select user_new.name from user_new INNER JOIN role
ON user_new.role_id = role.id;

SELECT user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name 
from user_new
INNER JOIN profile ON user_new.role_id = profile.id
INNER JOIN degree  ON profile.degree_id = degree.id
INNER JOIN department ON degree.department_id = department.id
INNER JOIN experience  ON profile.id = experience.profile_id
WHERE user_new.name = 'PROGRAD' AND experience.currentvalue=3; 

SELECT user_new.name, skill.name from user_new 
INNER JOIN role ON user_new.role_id=role.id
INNER JOIN profile ON  user_new.profile_id = profile.id
INNER JOIN profile_skills ON profile.id = profile_skills.skill_id
where role.name = 'ALUMINI'
ORDER BY user_new.name, skill.name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by user_new.name,experience.company_name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini'
order by user_new.name,experience.company_name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and experience.currentValue=1
order by user_new.name;

select user_new.name, experience.company_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name = 'Alumini' and experience.currentValue=1 and profile.batch='2008'
order by user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and user_new.profile_id is not null
order by user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.batch='2008'
order by user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and degree.name='BSC_CT'
order by user_new.name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and department.name='CSE'
order by user_new.name;
                     
select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

select user_new.name, higher_degree.university_name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join higher_degree on user_new.id = higher_degree.id
inner join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by user_new.name;

select user_new.name, profile.batch from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

select user_new.name, profile.batch,degree.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

select user_new.name, profile.batch,degree.name,department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

select degree.name, department.name from degree
inner join department on degree.department_id= department.id
order by degree.name;

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='male'
order by user_new.name;

select user_new.name, profile.designation from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join experience on user_new.id = experience.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name;

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
order by user_new.name;

select user_new.name, querytable.content from user_new
inner join querytable on user_new.role_id = querytable.id
where querytable.parent_id is not null
order by user_new.name;

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
order by user_new.name;

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where  post_type.name='Technology'
order by user_new.name,post.dateof;

select user_new.name, post.content from user_new
inner join post on user_new.role_id = post.id
inner join post_type on post.type_id = post_type.id
where post.dateof='2013'
order by user_new.name,post.dateof,post.content;


select user_new.name, department.name from user_new
inner join role on user_new.role_id = role.id
inner join profile on user_new.profile_id = profile.id
inner join degree on user_new.id = degree.id
inner join department on user_new.id= department.id
inner join profile_skills on user_new.profile_id = profile_skills.profile_id
inner join skills on profile_skills.skill_id = skills.id
where skills.name='Programming'
order by user_new.name;

select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
where role.name='Alumni'
order by user_new.name,events.dateof,events.name desc;

select user_new.name, events.name from user_new
inner join events on user_new.id = events.id
inner join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof;
