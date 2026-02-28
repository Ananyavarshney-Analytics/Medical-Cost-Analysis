select count(*) from medical_cost;
select * from medical_cost limit 5;

select smoker, avg
(charges)
from medical_cost
group by smoker;

select smoker, 
round(avg(charges)::numeric,2)
as avg_charges
from medical_cost
group by smoker;

select
case 
   when age < 30 then 'under 30'
   when age between 30 and 50 then '30-50'
   else 'above 50'
end as age_group,
round(avg(charges)::numeric,2)as
avg_charges 
from medical_cost
group by age_group
order by avg_charges desc;

select 
case
    when bmi < 18.5 then 'underweight'
    when bmi between 18.5 and 24.9
then 'Normal'
    when bmi between 25 and 29.9 then 'Overweight'
	else 'Obese'
end as bmi_catergory,
round(avg(charges)::numeric,2)as
avg_charges
from medical_cost
group by 
case
when bmi < 18.5 then 'underweight'
    when bmi between 18.5 and 24.9
then 'Normal'
    when bmi between 25 and 29.9 then 'Overweight'
	else 'Obese'
end
order by avg_charges desc;

select
region,
round(avg(charges)::numeric,2)as
avg_charges
from medical_cost
group by region
order by avg_charges desc;

select 
children,
round(avg(charges)::numeric,2)as
avg_charges
from medical_cost
group by children
order by children;