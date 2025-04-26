select * from [Co2_ Emissions_Canada]
--top 10 vehicles with highest co2 emission
select Top 5 Make, Model, Vehicle_Class, CO2_Emissions_Gram
from [Co2_ Emissions_Canada]
order by CO2_Emissions_Gram desc

--fuel efficient vehicles based on fuel consumption
select top 5 Make, Model, Fuel_Consumption_City_Litre, Fuel_Consumption_Comb_Litre, Fuel_Consumption_Highway_Litre
from [Co2_ Emissions_Canada]
order by Fuel_Consumption_City_Litre, Fuel_Consumption_Comb_Litre, Fuel_Consumption_Highway_Litre desc

--vehicles with the avg co2 emission
select top 5 Model, avg(CO2_Emissions_Gram) as avg_co2
from [Co2_ Emissions_Canada]
group by Model
order by avg_co2 desc

--how fuel_type affects co2 emission
select distinct Fuel_Type,  avg(CO2_Emissions_Gram) as avg_co2
from [Co2_ Emissions_Canada]
group by Fuel_Type
order by avg_co2 desc

--fuel type with the highest fuel-efficient cars
select Fuel_Type, Fuel_Consumption_Comb_Litre
from [Co2_ Emissions_Canada]
where Fuel_Consumption_Comb_Litre =(select max(Fuel_Consumption_Comb_Litre) from [Co2_ Emissions_Canada]
)

