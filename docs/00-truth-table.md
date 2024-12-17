# 逻辑门真值表

## 基础门

### 非门 N

| A   | O   |
| --- | --- |
| 0   | 1   |
| 1   | 0   |

$$
\begin{aligned}
    Out = \overline{A}
\end{aligned}
$$

### 与门 AND

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |

$$
\begin{aligned}
    Out = A \times B
\end{aligned}
$$

### 或门 OR

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |

$$
\begin{aligned}
    Out = A + B
\end{aligned}
$$

### 异或门 XOR

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |

$$
\begin{aligned}
    Out = A\overline{B} + \overline{A}B
\end{aligned}
$$

### 与非门 NAND

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |

### 或非门 NOR

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 0   |

### 同或门 XNOR

| A   | B   | O   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |

---

## 复合门

### 半加器

| A   | B   | C   | S   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 1   |
| 0   | 1   | 0   | 1   |
| 1   | 1   | 1   | 0   |

$$
\begin{aligned}
    S= & \overline{A}B + A\overline{B}
\end{aligned}
$$

$$
\begin{aligned}
    C= & AB
\end{aligned}
$$

### 全加器

| A   | B   | C   | S   | C   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 1   | 0   |
| 1   | 1   | 0   | 0   | 1   |
| 0   | 0   | 1   | 1   | 0   |
| 1   | 0   | 1   | 0   | 1   |
| 0   | 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   | 1   |

$$
\begin{aligned}
    S= & \overline{A}B\overline{C} + A\overline{B}C + AB\overline{C} + ABC
\end{aligned}
$$

$$
\begin{aligned}
    C= & \overline{A}B + A\overline{B}C
\end{aligned}
$$

### 3-8 译码器

| A   | B   | C   | Y0  | Y1  | Y2  | Y3  | Y4  | Y5  | Y6  | Y7  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 1   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   |
| 1   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   |
| 1   | 1   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   |

$$
\begin{aligned}
    Y_i= & \overline{A}\overline{B}\overline{C}i + \overline{A}B\overline{C}(i+2) + AB\overline{C}(i+4) + ABC(i+8)
\end{aligned}
$$

### 8-3 编码器

| Y0  | Y1  | Y2  | Y3  | Y4  | Y5  | Y6  | Y7  | A   | B   | C   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 1   |
| 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 1   | 0   |
| 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 1   | 1   | 0   |
| 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 1   | 1   | 1   |
| 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |

$$
\begin{aligned}
    A= & \overline{Y_7} + \overline{Y_6} + \overline{Y_5} + \overline{Y_4} \\
    B= & \overline{Y_7} + \overline{Y_6} + \overline{Y_3} + \overline{Y_2} \\
    C= & \overline{Y_7} + \overline{Y_5} + \overline{Y_4} + \overline{Y_1}
\end{aligned}
$$

