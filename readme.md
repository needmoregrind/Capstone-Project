# BudgetBuddy

## Table of Contents
- [Overview](#overview)
- [Product Spec](#product-spec)
- [Wireframes](#wireframes)
- [Schema](#schema)

---

## Overview

**Description:**  
BudgetBuddy is a lightweight mobile app to help users track their income and expenses. It features a clean dashboard, easy transaction logging, and budget summaries to promote financial awareness.

**App Evaluation:**
- **Category:** Finance
- **Mobile:** Yes, mobile-first
- **Story:** Users want a simple way to track money on-the-go
- **Market:** Anyone who manages personal finance
- **Habit:** Users log expenses and income daily
- **Scope:** Focused but expandable (e.g., savings goals)

---

## Product Spec

### 1. User Stories

#### Required Must-have
- [ ] User can add an income or expense
- [ ] View list of all transactions
- [ ] Monthly budget summary with pie chart
- [ ] Local data persistence (Core Data or SQLite)
- [ ] Edit/Delete transaction

#### Optional Nice-to-have
- [ ] Daily reminder notification
- [ ] Set monthly budget limit
- [ ] Export as CSV

### 2. Screen Archetypes

- **Home Screen (Dashboard)**
  - View total income, expenses, and balance
  - Shortcut to add a new transaction

- **Transaction List Screen**
  - View list of transactions with filters
  - Edit/Delete each item

- **Add/Edit Transaction Screen**
  - Form with category, type (income/expense), amount, note

- **Monthly Summary Screen**
  - Visual pie chart and summary

### 3. Navigation

**Tab Navigation**
- Dashboard
- Transactions
- Summary

**Flow Navigation**
- Dashboard → Add Transaction
- Transactions → Edit Transaction

---

## Wireframes

![Screenshot 2025-04-24 at 1.46.05 AM](https://hackmd.io/_uploads/Hk1KlIvyxx.png)

---

## [BONUS] Digital Mockups

_Coming soon (Figma or other tool)_

---

## Schema

**Models**

**Transaction**
- id (String)
- title (String)
- amount (Double)
- type (String: income/expense)
- category (String)
- timestamp (Date)

**Networking**
- N/A (local storage for now)
