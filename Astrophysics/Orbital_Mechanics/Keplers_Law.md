---
title: Kepler's Law
---

## Proof - Two Body Problem

Consider the two body problem where the Moon orbits the Earth. To be general, let's take the coordinate system $S$ where $r_1$ is the distance vector to the Earth and $r_2$ is the distance vector to the Moon. The vector between the Earth and Moon is $\Delta r$

Let's consider the geocentric coordinate system $S'$ (centered at the Earth) where the gravitational force acting on the Moon by the Earth is given by

$$
F_g = -\frac{G m_1 m_2}{\Delta r^2}~ \hat r
$$

* $r$ : The distance betwen the Earth and Moon, $r = \lvert{\Delta r}\rvert$

Changing to the $S$ coordinate is simple since the distance $r$ does not change. Newton's second law allows us to write the two gravitatonal forces $F_{g,12}$ (Moon pulls the Earth) and $F_{g,21}$ (Earth pulls the Moon),

$$
F_{g,12} = \frac{Gm_1m_2}{r^2} \hat r = m_2 \ddot r
$$

$$
F_{g,12} = -\frac{Gm_1m_2}{r^2} \hat r
$$