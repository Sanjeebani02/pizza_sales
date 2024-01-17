1.Total Revenue:-
select sum(total_price) as Total_revenue from pizza_sales;

2.Average Order Value:-
select (sum(total_price)/count(distinct order_id)) as Avg_Order_Value from pizza_sales;

3.Total pizza sold:-
select sum(quantity) as total_pizza_sold from pizza_sales;

4.Total Orders:-
select count(distinct order_id) as Total_orders from pizza_sales;

5.Average pizzas per order:-
select sum(quantity)/count(distinct order_id) as Avg_pizzas_per_order from pizza_sales;

6.Daily Trend for Total Orders:-
select  dayname(order_date)  as order_day , count(distinct order_id) as total_orders from pizza_sales
group by order_day

7.Monthy trend for Total orders:-
select month(order_date) as month_name, count(distinct oredr_id) as total_orders from pizza_sales
group by month(order_date);

select monthname('oredr_date') as month_name, count(distinct 'oredr_id') as total_orders from pizza_sales
group by monthname('oredr_date');

8.Percentage of sales by pizza category:-
select pizza_category, sum(total_price)*100/(select sum(total_price) from pizza_sales) as Total_sales from pizza_sales
group by pizza_category;

9.Percentage of sales by pizza size:-
select pizza_size, sum(total_price)*100/(select sum(total_price) from pizza_sales) as PCT_of_sales_bysize from pizza_sales
group by pizza_size;

10.Total pizzas sold by pizza category:-
select pizza_category, sum(distinct order_id) as total_sale_by_category from pizza_sales
group by pizza_category;

11.Top 5 best selling pizzas:-
select pizza_name, sum(total_price) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue DESC limit 5;

select pizza_name, sum(quantity) as Total_quantity from pizza_sales
group by pizza_name
order by Total_quantity DESC limit 5;

select pizza_name, sum(distinct order_id) as Total_orders from pizza_sales
group by pizza_name
order by Total_orders DESC limit 5;

12.Bottom 5 worst selling pizzas:-
select pizza_name, sum(total_price) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue ASC limit 5;

select pizza_name, sum(quantity) as Total_quantity from pizza_sales
group by pizza_name
order by Total_quantity asc limit 5;

select pizza_name, sum(distinct order_id) as Total_orders from pizza_sales
group by pizza_name
order by Total_orders asc limit 5;
