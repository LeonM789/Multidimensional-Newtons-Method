<h1 align="center">
  <br>
  <a href="https://leonmarx.de"><img src="https://leonmarx.de/wp-content/uploads/2022/10/69519963-1D46-425F-81EA-E60863D7BD47_1_201_a.jpeg" alt="Markdownify" width="200"></a>
  <br>
  Multidimensional Newtons Method
  <br>
</h1>

<h4 align="center"><b><u>A numerical optimization algorithm.</h4>


<p align="center">
  <a href="#introduction">Introduction</a> •
  <a href="#Requirements">Requirements</a> •
  <a href="#Usage">Usage</a> •
  <a href="#Example-function">Example Function</a> •
  <a href="#related">Related</a> •
  <a href="#license">License</a>
</p>

<br>
<br>

## 📝 Introduction
This repository contains Matlab code for a multidimensional Newton method, a numerical optimization algorithm that finds the minimum of a scalar function of multiple variables. The algorithm works by iteratively solving a system of linear equations derived from the function's Hessian matrix and gradient vector.

<br>

## 🛠️ Requirements
The code in this repository is written in Matlab, and requires no additional toolboxes.

<br>

## 💡 Usage
Just open the `testing.m` file in the editor and hit the run button. In the terminal you will get the results of the example inputs. 
If you want to use your own function, here is an example of another function file and a Jacobian matrix file that you can use as a guide for the structure (the Jacobian matrix is optional because the file `mynewton.m` approximates it numerically if no jacobi matrix is supplied):  
  
<br>
  
Function file:
```matlab
  function [result] = system_of_equations(x)

    f1 = -cos(x(1))/81 + (x(2))^2/9 + sin(x(3))/3 - x(1); 
    f2 = sin(x(1))/3 + cos(x(3))/3 - x(2); 
    f3 = -cos(x(1))/9 + x(2)/3 + sin(x(3))/6 - x(3);

    result = [f1; f2; f3];
  end
```
Jacobian matrix file:
```matlab
  function [J] = jacobi(x)

    J = [sin(x(1))/81-1, 2*x(2)/9, ...
        cos(x(3))/3; 
        cos(x(1))/3, -1, ...
        -sin(x(3))/3;
        sin(x(1))/9, 1/3, ...
        cos(x(3))/6-1];

  end
``` 


<br>

## 🗂️ Example Function
The repository includes an example function in the `rosenbrock.m` file. The function is the so called <a href="https://en.wikipedia.org/wiki/Rosenbrock_function" target="_blank">Rosenbrock function</b></u></a>

<br>

## 🧡 You may also like...

- [FlappyBird AI](https://github.com/LeonM789/FlappyBirdAI.git) - A neural network in Python

<br>

## ⚖️ License

This project is licensed under the MIT License - see the `LICENSE file for details.

<br>

---

> [leonmarx.de](https://www.leonmarx.de) &nbsp;&middot;&nbsp;
> GitHub [@LeonM789](https://github.com/LeonM789) 
