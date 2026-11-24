# Superstore Relational Sales & KPI Analysis

**Data Analytics & Business Intelligence Internship — Task 2**  
**Organization:** Maincrafts Technology  
**Author:** Debasish Panigrahi  

---

### Overview
This repository contains my Task-2 relational business intelligence project built on the **Sample – Superstore** dataset (`9,993` cleaned transactions across `793` unique customers). Moving beyond single-table reporting, the workflow splits transactions and customer profiles into normalized **`Orders`** and **`Customers`** tables, combines them via **SQL `INNER JOIN`**, builds multi-dimensional **Excel Pivot & KPI models**, and delivers an interactive **Power BI KPI Dashboard**.

---

### Interactive Power BI KPI Dashboard
![Superstore Relational KPI & Performance Dashboard](task2_dashboard_screenshot.png)

---

### Repository Contents
* **`task2_sql_analysis.sql`** — Relational `INNER JOIN` query and 4 core KPI aggregation queries executed in SQLite.
* **`task2_excel_analysis.xlsx`** — Normalized `Orders` and `Customers` tabs, 4 comparative Pivot Tables (`Pivot_Analysis`), calculated columns (`Profit_Margin`, `Discount_Status`), `INDEX/MATCH` lookups, and a dynamic `KPI_Summary` table built with `SUMIFS` and `COUNTIFS`.
* **`task2_dashboard.pbix`** — Interactive Power BI Desktop report featuring a `1-to-Many` data model, DAX measures (`Profit Margin`, `Total Customers`), 4 KPI cards, 5 charts, and 4 slicers.
* **`task2_dashboard_screenshot.png`** — Full-view snapshot of the final Power BI dashboard.
* **`Task2_Business_Performance_Report.pdf`** — Executive 2–3 page report covering KPI performance, regional and category comparisons, customer segment and discount analysis, and growth recommendations.

---

### Key Findings at a Glance
* **Overall Performance:** **$2,296,919.49** in total revenue across **793 unique customers**, generating **$286,409.08** in net profit (**12.47%** margin).
* **Regional Leadership:** **West** leads in both revenue (**$764,634.45**) and profit (**$98,008.22**), while **East** achieves the highest regional profit margin (**15.46%**). **South** trails in margin (**7.51%**) despite having the highest average value per line item (**$247.25**).
* **Category Margin Contrast:** **Technology** (**17.40%** margin, **$145,454.95** profit) and **Office Supplies** (**17.04%** margin) drive 93.5% of total profit, whereas **Furniture** yields just **2.49%** due to heavy markdowns and shipping costs.
* **Customer Segments & Discount Impact:** **Consumer** accounts for **50.56%** (**$1.16M**) of total revenue, while **Corporate** delivers strong B2B margins. Discounts of **30% or higher** consistently turn profitable transactions into net losses.
* **Seasonal Revenue Surge:** Monthly sales peak sharply in **Q4**—led by **November ($352,461.07)** and **December ($325,293.50)**—after a Q1 low in **February ($59,751.25)**.

---

### Recommendations
1. **Enforce a 20% Standard Discount Ceiling:** Require manager approval for discounts above 20%, especially on Furniture and South-region orders where 30%–80% markdowns wipe out margins.
2. **Focus B2B Expansion on Corporate & Home Office Accounts:** Offer volume-tiered pricing (capped at 15%–20% discount) to grow high-retention Corporate accounts.
3. **Align Inventory & Promotions with Q4 Peaks:** Scale Technology and Office Supplies inventory by late August ahead of the September–December surge, and introduce targeted Q1 B2B bundles to lift January–February demand.
