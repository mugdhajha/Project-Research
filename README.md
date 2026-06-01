# Finite Difference Method for Boundary Value Problems

## Overview

This project implements numerical solutions of boundary value problems (BVPs) arising from engineering and mechanics applications using the Finite Difference Method (FDM) in MATLAB.

The objective is to discretize differential equations, apply appropriate boundary conditions, and compare numerical solutions with available analytical solutions.

---

## Tasks Completed

### Task 1

Implementation of a finite difference scheme for a second-order boundary value problem and comparison with the analytical solution.

### Task 2

Investigation of numerical accuracy and convergence behavior with mesh refinement.

### Task 3

Numerical solution of the radial displacement equation arising from Mechanics of Solids:

d²u/dr² + (1/r)(du/dr) − u/r² = 0

subject to:

* u(Ri) = 0
* σrr(Ro) = −p

The problem is first non-dimensionalized and then solved using the Finite Difference Method. Numerical results are compared against the analytical solution.

---

## Methodology

1. Non-dimensionalization of governing equations.
2. Spatial discretization using finite differences.
3. Assembly of the linear system Au = b.
4. Application of Dirichlet and Robin boundary conditions.
5. Solution of the resulting algebraic system using MATLAB.
6. Validation against analytical solutions.
7. Error and convergence analysis.

---

## Software Used

* MATLAB R2026a
* Finite Difference Method (FDM)

---

## Repository Structure

```text
.
├── Task1/
├── Task2/
├── Task3/
├── plots/
├── README.md
```

---

## Results

The numerical solutions obtained using the Finite Difference Method show good agreement with analytical solutions. Accuracy improves with mesh refinement, demonstrating the convergence properties of the method.

---

## Author

Mugdha
