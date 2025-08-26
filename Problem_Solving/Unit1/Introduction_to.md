# **Unit I – Introduction to Problem Solving and Set Theory**

---

## **Topic 1: Introduction to Problem Solving and Review of Set Theory**

### **Problem Solving**

* **Definition**: Problem solving is a systematic approach to finding a solution for a given challenge by applying logical reasoning, creativity, and structured techniques.
* **Steps in Problem Solving**:

  1. **Understanding the problem** – Identify what is being asked.
  2. **Devising a plan** – Choose a suitable strategy (brute force, divide and conquer, invariants, etc.).
  3. **Carrying out the plan** – Implement the solution step by step.
  4. **Reflecting and improving** – Check correctness and think about generalizations.

### **Algorithmic Problem Solving**

* An **algorithm** is a finite sequence of precise instructions.
* Characteristics:

  * Finiteness (must terminate).
  * Definiteness (clearly specified).
  * Effectiveness (each step feasible).
  * Input/Output (accepts input, produces output).

### **Review of Set Theory**

* **Set**: A collection of distinct elements.
* **Notation**: $A = \{1,2,3\}$.
* **Basic Operations**:

  * Union ($A \cup B$)
  * Intersection ($A \cap B$)
  * Difference ($A - B$)
  * Complement ($A^c$)
* **Applications in problem solving**: Sets are often used to define states, constraints, and possible solutions.

**Example Problem**:

* If $A = \{1,2,3\}, B = \{2,3,4\}$, find $A \cup B, A \cap B, A - B$.

  * $A \cup B = \{1,2,3,4\}$
  * $A \cap B = \{2,3\}$
  * $A - B = \{1\}$

---
Alright 👍 Let’s build a **detailed, step-by-step worked example** for **Set Theory**, similar to what you would see in a textbook or course handout.

---

# 🌐 Detailed Example – Set Theory (Union, Intersection, Complement, Venn Diagram)

---

### Problem Statement

In a university class of **100 students**:

* 60 students play **Cricket (C)**,
* 45 students play **Football (F)**,
* 30 students play **Hockey (H)**,
* 25 students play **both Cricket and Football**,
* 20 students play **both Football and Hockey**,
* 15 students play **both Cricket and Hockey**,
* 10 students play **all three sports**.

**Questions:**

1. How many students play at least one sport?
2. How many play only Cricket?
3. How many play exactly two sports?
4. How many students do not play any sport?

---

### Step 1: Recall Formula for 3 Sets

For three sets $A, B, C$:

$$
|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |B \cap C| - |A \cap C| + |A \cap B \cap C|
$$

---

### Step 2: Plug Values into Formula

Here,

* $|C| = 60, |F| = 45, |H| = 30$
* $|C \cap F| = 25, |F \cap H| = 20, |C \cap H| = 15$
* $|C \cap F \cap H| = 10$

So,

$$
|C \cup F \cup H| = 60 + 45 + 30 - 25 - 20 - 15 + 10
$$

$$
= 85
$$

**👉 85 students play at least one sport.**

---

### Step 3: Find Students Who Don’t Play Any Sport

Total students = 100.

$$
\text{Not playing any sport} = 100 - 85 = 15
$$

---

### Step 4: Find Students Playing Only Cricket

We need to exclude those who play other sports.

$$
\text{Only C} = |C| - (|C \cap F| + |C \cap H|) + |C \cap F \cap H|
$$

$$
= 60 - (25 + 15) + 10 = 30
$$

**👉 30 students play only Cricket.**

---

### Step 5: Find Students Playing Exactly Two Sports

Formula for “exactly two” = pairwise intersection – those in all three.

* Exactly (C ∩ F) = $25 - 10 = 15$
* Exactly (F ∩ H) = $20 - 10 = 10$
* Exactly (C ∩ H) = $15 - 10 = 5$

$$
\text{Total Exactly Two} = 15 + 10 + 5 = 30
$$

---

### ✅ Final Answers

1. Students playing at least one sport = **85**
2. Only Cricket = **30**
3. Exactly two sports = **30**
4. No sport = **15**

---

### Step 6: Visualization (Venn Diagram Idea)

If you draw a **Venn diagram with three circles (C, F, H)**:

* Place **10** in the center (all three).
* Then subtract to place “only two” overlaps.
* Fill in the “only” regions.
* Remaining outside the circles = 15 (no sport).

---

📖 **Reading Problem (Try Yourself):**
In a group of 200 students:

* 100 like Tea (T), 80 like Coffee (C), 60 like Juice (J).
* 40 like both Tea & Coffee, 30 like both Coffee & Juice, 20 like both Tea & Juice.
* 10 like all three.

👉 Find:

1. Students who like at least one drink.
2. Students who like only Tea.
3. Students who like exactly two drinks.
4. Students who like none.

---
Perfect 👍 Let’s enrich the **Set Theory** section with **Venn diagrams**, including **2D** and **3D visualizations**.

---

# 🎯 Venn Diagrams in Set Theory

Venn diagrams are **graphical representations of sets**. They are used to illustrate relationships such as **union, intersection, and complement**.

---

## **1. Two-Set Venn Diagram**

* Represents relationships between **two sets** $A$ and $B$.
* The **overlapping area** shows $A \cap B$.

**Example:**
If $A = \{1,2,3,4\}, B = \{3,4,5,6\}$:

* The overlap (intersection) is $\{3,4\}$.

---

## **2. Three-Set Venn Diagram**

* Represents **three sets** $A, B, C$.
* There are **7 regions**:

  1. Only $A$
  2. Only $B$
  3. Only $C$
  4. $A \cap B$ only
  5. $B \cap C$ only
  6. $C \cap A$ only
  7. $A \cap B \cap C$ (all three)

**Formula for 3 sets:**

$$
|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |B \cap C| - |C \cap A| + |A \cap B \cap C|
$$

---

## **3. 3D Venn Diagrams**

* While 2D diagrams are standard, **3D Venn diagrams** can represent **4 or more sets**.
* With 3 sets, a 3D representation shows spheres overlapping in space.
* With 4 sets, 3D is essential (since 2D cannot show all overlaps clearly).

---

## **📊 Python Code for Visualization**

### **2D Venn Diagram (3 sets)**

```python
import matplotlib.pyplot as plt
from matplotlib_venn import venn3

# Example: Cricket, Football, Hockey
venn3(subsets=(30, 20, 10, 15, 10, 5, 10),
      set_labels=('Cricket', 'Football', 'Hockey'))

plt.title("3-Set Venn Diagram Example")
plt.show()
```

---

### **3D Venn Diagram (using matplotlib + mpl\_toolkits)**

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

# Define spheres for 3 sets
def plot_sphere(ax, center, color):
    u, v = np.mgrid[0:2*np.pi:40j, 0:np.pi:20j]
    x = np.cos(u)*np.sin(v) + center[0]
    y = np.sin(u)*np.sin(v) + center[1]
    z = np.cos(v) + center[2]
    ax.plot_surface(x, y, z, color=color, alpha=0.3)

fig = plt.figure(figsize=(8,8))
ax = fig.add_subplot(111, projection='3d')

# Plot 3 spheres (Cricket, Football, Hockey)
plot_sphere(ax, (0,0,0), 'red')      # Cricket
plot_sphere(ax, (1,0.5,0), 'blue')   # Football
plot_sphere(ax, (0.5,1,0.5), 'green')# Hockey

ax.set_title("3D Venn Diagram (3 sets)")
plt.show()
```

This produces a **3D overlap of three spheres**, giving a spatial intuition of intersections.

---

