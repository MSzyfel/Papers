# Display Math Blocks Missing Terminal Periods

This report lists all cases where a display math block ($$...$$) ends a sentence but does NOT have a period before the closing $$.

## Files with Issues

### 1. chapters/theoretical_analysis/trees_worst_case_non_uniform_costs/qptas.tex

**Line 22** - Display math ending with cases environment, followed by new lemma:
```tex
$$
c'\br{v}=\begin{cases}
    \cl{c\br{c}}_k, & \text{if } c\br{v}>pk, \text{ in which case the vertex will be called \textit{heavy}},\\
    \cl{c\br{c}}_{\frac{1}{pn}}, & \text{otherwise, in which case the vertex will be called \textit{light}}.\\
\end{cases}
$$

\begin{lemma}\label{rounded_dt_lemma}
```

**Line 27** - Display math followed by proof environment:
```tex
    $$
    \OPT\br{T,c'}\leq \br{1+\frac{2}{p}}\cdot \OPT\br{T,c}.
    $$
    \begin{proof}
```

**Line 83** - Display math followed by explanation starting with "where":
```tex
        $$
        \COST_{D}\br{T,c'}&\leq \br{1+\frac{3}{p}}\cdot\br{1+\frac{4}{p}}\cdot\OPT\br{T,c}
        $$

        where the first inequality is by Proposition...
```

**Line 89** - Display math with cases, followed by "Then, the...":
```tex
$$
\kappa_{T,c}\br{q, v}= \begin{cases}
    \fl{t_v+c\br{q}}_k-t_v, & \text{if } c\br{v}\leq pk \text{ and the response to query $q$ in $T$, towards $v$ is down},\\
    c\br{q}, & \text{otherwise}.
\end{cases}
$$

Then, the \textit{aligned cost} of $D$ is defined as:
```

**Line 135** - Display math followed by new subsubsection:
```tex
$$
n^{O\br{d}}=n^{O\br{p^2\log n}}=n^{O\br{\log n/\epsilon^2}}
$$
\subsubsection{Proof of Proposition \ref{MergeDTsProposition}}
```

---

### 2. chapters/theoretical_analysis/trees_worst_case_non_uniform_costs/warm_up.tex

**Line 17** - Display math followed by "Notice,":
```tex
        $$
        \OPT\br{T} = \min_{v\in V\br{T}}\brc{c\br{v}+\max_{H\in T-v}\brc{\OPT\br{H}}}
        $$

        Notice, that there are at most $O\br{2^n}$ different subtrees...
```

---

### 3. chapters/theoretical_analysis/trees_worst_case_non_uniform_costs/parametrized.tex

**Line 13** - Display math followed by "We say that":
```tex
$$
k\br{T,c}= \max_{t\in\mathbb{R}_{\geq 0}}\brc{k\br{T,c, t}}
$$ 
We say that a function $c$ is $k$\textit{-up-modular}...
```

**Line 103** - Display math followed by explanation starting with "where":
```tex
$$
\COST_D\br{\mathcal{T}, c}\leq 2\cdot \COST_D\br{\mathcal{T}, c'}=2\cdot \OPT\br{\mathcal{T}, c'}\leq 2\cdot\OPT\br{\mathcal{T}, c}\leq 2\cdot\OPT\br{T, c}
$$

where the equality is due to Corollary...
```

---

### 4. chapters/theoretical_analysis/paths/basic_algorithm.tex

**Line 8** - Display math followed by "Similarly,":
```tex
$$
\OPT_{max}\br{i,j} = \min_{i\leq k<j}\brc{c\br{v_kv_{k+1}}+\max\brc{\OPT_{max}\br{i, k}, \OPT_{max}\br{k+1, j}}}
$$
Similarly, fix again $i<j$ and define...
```

**Line 12** - Display math followed by "By the optimality":
```tex
$$
\OPT_{sum}\br{i,j}=\sum_{x\in v_i,\dots,v_j}w\br{x}\cdot \COST_{sum}\br{D_{sum}, x}=w\br{i,j}\cdot c\br{q_{sum}} + \COST_{sum}\br{D_1} + \COST_{sum}\br{D_2}
$$
By the optimality of $\OPT_{max}\br{i,j}$...
```

**Line 16** - Display math followed by "Both recurrences":
```tex
$$
\OPT_{sum}\br{i,j} = \min_{i\leq k<j}\brc{w\br{i,j}\cdot c\br{v_kv_{k+1}}+\OPT_{sum}\br{i, k}+ \OPT_{sum}\br{k+1, j}}
$$

Both recurrences can be solved using dynamic programming...
```

---

### 5. chapters/theoretical_analysis/paths/average_case_non_uniform_weights.tex

**Line 24-25** - Display math followed by "Whenever":
```tex
       $$\OPT\br{i,j} + \OPT\br{i',j'}\leq 
\OPT\br{i',j} + \OPT\br{i,j'}$$
Whenever $i=i'$ or $j=j'$ the claim follows trivially...
```

---

### 6. chapters/theoretical_analysis/trees_average_case_non_uniform_weights/greedy.tex

**Line 8** - Display math followed by proof environment:
```tex
            $$
            \OPT\br{T}\geq \frac{w\br{T}}{2}+\frac{w\br{c}}{2}+\sum_{H\in T-c}\OPT\br{H}
            $$
            \begin{proof}
```

---

### 7. chapters/theoretical_analysis/non_uniform_weights_costs_average/non_uniform_weights_costs_average.tex

**Line 11-13** - Display math followed by lemma end:
```tex
$$
c_T\br{D} = \sum_{v \in V\br{T}} w\br{T_{D,v}} \cdot c\br{v}.
$$  
\end{lemma}
```

---

## Summary

**Total files with issues:** 7
**Total instances found:** 15

All these display math blocks end sentences and should have a period (.) before the closing $$ according to mathematical typesetting conventions.
