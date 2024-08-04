[Lecture Video](https://youtu.be/JRZgW1YjCKk?list=PLpGHT1n4-mAvcXwzOIz3dHnGZaQP1LEib)
# Equivalence Principle

> Gravity is similar to acceleration

## The Elevator Thought Experiment

Imagine an elevator at some height $L(t)$ away from the floor at time $t$. Let’s define two reference frames: outside the elevator there is a coordinate axis $z$; inside the elevator there is a coordinate axis $z'$ .

### Inertial Reference Frame

At constant velocity, $v(t)\equiv v = v_0$ the height of the elevator is

$$
L(t) = vt \tag{1}
$$

Relating the two coordinate systems:

$$
\begin{align}
z' &= z - L(t) \\
t' &= t        \\ 
\end{align}
\tag{2}
$$
Plugging in Eq (1),
$$
\begin{align}
z' &= z - vt \\
t' &= t        \\
\end{align}
$$

Let’s now imagine some forces. In the outside coordinate system, the acceleration due to force is:
$$
\ddot{z} = \frac{F}{m}
$$
, where $\ddot{z} := \left(\frac{\partial}{\partial t}\right)^2z$.

Transformed to the inside coordinate system,
$$
\ddot{z'} = \ddot{z}
$$
, it is the same.

Therefore it is not surprising that Newton’s law is the same in both inertial reference frames:

$$
F = m \ddot{z} = m \ddot{z'} = F'
$$
### Accelerating Reference Frame

Let the elevator accelerate upwards such that the height $L(t) = \frac{1}{2}g t^2$.

Then we see that,

$$
\begin{align}
\dot{L}  &= gt \\
\ddot{L} &= g
\end{align}
$$

Using the transformation in Eq. (2):

$$
\begin{align}
z' &= z - \frac{1}{2} g t^2 \\
t  &= t
\end{align}
$$

Adding a force is the same as before in the outside coordinate, but in the inside coordinate:

$$
\ddot{z'} = \ddot{z} - g
$$

Newton’s law then becomes,

$$
F = m \ddot{z} = m(\ddot{z'} + g) = F' + mg
$$

Written more in the perspective of the force felt in the inside coordinate system,

$$
F' = F - mg
$$