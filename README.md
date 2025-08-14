# 🥗 Smart Diet Planner – MySQL Project

## 📌 Project Overview
The **Smart Diet Planner** is a MySQL-based project designed to manage and generate diet plans for users based on their **activity levels, health conditions, allergies, and goals**.  
It provides an organized database structure for storing **users, food items, meal plans, and nutrition data**, along with helpful views to calculate daily and meal-wise nutrition totals.

---

## 🎯 Objectives
- Store and manage **user health data** in an efficient way.
- Automatically suggest diet plans based on **allergies, conditions, and goals**.
- Keep a detailed **nutrition database** of food items.
- Generate **meal macros and daily totals** using MySQL views.
- Create a base for future integration with a web or mobile application.

---

## 🛠 How I Built It
1. **Database Setup**
   - Created a database named `smart_diet` in MySQL.
   - Defined tables for users, food items, allergies, conditions, and diet plans.
   - Added **foreign key constraints** for relational integrity.

2. **Activity Levels Table**
   - Added calorie multipliers for different activity categories (sedentary, light, moderate, active, very active, etc.).

3. **User Table**
   - Stored personal details like name, gender, height, weight, age, diet preference, and goals.

4. **Allergies and Conditions**
   - Created separate tables to store allergy types (nuts, lactose, gluten, etc.) and conditions (diabetes, hypertension, etc.).
   - Used **junction tables** (`user_allergies`, `user_conditions`) to link multiple users to multiple allergies/conditions.

5. **Food Items Table**
   - Stored food name, serving size, calories, macronutrients, and whether it contains nuts, dairy, or gluten.

6. **Diet Plans & Meals**
   - Stored different meal plans for users.
   - Linked meals with food items.
   - Added **views**:
     - `v_meal_macros` → Shows total nutrition for each meal.
     - `v_daily_totals` → Shows total nutrition for each day.

7. **Data Population**
   - Inserted demo data for:
     - Activity levels
     - Users (49 demo entries)
     - Allergies & conditions
     - Food items

8. **Backup & Export**
   - Used `mysqldump` to export the database as `smart_diet.sql` for sharing and version control.

---

## ✨ Features
- **User Health Profiles** → Stores and manages all health-related data.
- **Custom Meal Plans** → Based on user goals (weight gain, loss, or maintenance).
- **Allergy & Condition Filtering** → Avoids food items that can cause health risks.
- **Nutrition Calculation** → Calculates calories, protein, carbs, fats, sugar, and sodium for each meal/day.
- **Multiple Views** → Prebuilt queries for quick analysis.
- **Data Backup** → Ready-to-import `.sql` file for easy setup.

---

## 🗄 Database Design
**Tables Created:**
1. `activity_levels`
2. `users`
3. `allergies`
4. `user_allergies`
5. `conditions`
6. `user_conditions`
7. `food_items`
8. `diet_plans`
9. `meals`
10. `meal_items`

**Views:**
- `v_meal_macros`
- `v_daily_totals`

---

## ⚡ Example Queries
**1. Find vegan foods:**
```sql
SELECT food_name FROM food_items WHERE category = 'vegan';

**2. Suggest Diet Plan for People with Allergies ** 

This query suggests safe food options for users based on their allergies.  
It checks if the food **does not contain** the allergen the user is allergic to.

```sql
SELECT DISTINCT u.full_name, f.food_name
FROM users u
JOIN user_allergies ua ON u.user_id = ua.user_id
JOIN allergies a ON ua.allergy_id = a.allergy_id
JOIN food_items f ON (
    (a.allergy_name = 'Nuts' AND f.contains_nuts = FALSE) OR
    (a.allergy_name = 'Lactose' AND f.is_dairy = FALSE) OR
    (a.allergy_name = 'Gluten' AND f.is_gluten = FALSE)
)
ORDER BY u.full_name;


## 🚀 How to Run These Queries

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/smart-diet-planner.git
cd smart-diet-planner

