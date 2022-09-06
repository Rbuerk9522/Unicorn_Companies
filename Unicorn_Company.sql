-- List of Unicorn Companies
-- Here I will answer the following questions:
	-- Which industry has most value in billions?
	-- Which country has the has the most unicorn companies?
	-- Which year saw the greatest growth of unicorn companies?

-- A dashboard of this data can be found at: https://public.tableau.com/app/profile/rodney.buerkley/viz/Unicorn_Companies_16624959175910/UnicornCompanies

-- Here I am selecting everything to see and explore the data
select * from unicorn_company.unicorn_company;

-- 	Which industry has most value in billions?
select unicorn_company.INDUSTRY, SUM(unicorn_company.VALUATION_IN$B) as Total_Valuein$B from unicorn_company.unicorn_company
Group by unicorn_company.INDUSTRY Order by Total_Valuein$B DESC;
-- From this query I have shown that the Fintech industry has the most value at 882 in billions

-- 	Which country has the has the most unicorn companies?
select unicorn_company.COUNTRY, unicorn_company.CITY, count(unicorn_company.MyUnknownColumn) as Count_of_Companies from unicorn_company.unicorn_company
group by unicorn_company.COUNTRY, unicorn_company.CITY order by Count_of_Companies DESC;
-- From this query I have shown that the United States hold the mnost unicorn companies at 630 companies and inside of the United States San Francisco has the most at 167 

-- 	Which year saw the greatest growth of unicorn companies?
select year(unicorn_company.DATE_JOINED) as Year_Started, month(unicorn_company.DATE_JOINED) as Month_Started, count(unicorn_company.MyUnknownColumn) as Count_of_Companies from unicorn_company.unicorn_company
group by Year_Started, Month_Started order by Year_Started DESC, Month_Started;
-- From this query I have shown the years that each company has started with 2012 having 2 companies and 2022 having 225 companies 