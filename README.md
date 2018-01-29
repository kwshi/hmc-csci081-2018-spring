# CS 81 (Spring 2018)

Here are some assignment files.


# How do I make natural deduction proofs?

The recommended approach to making formal logic proofs in LaTeX, per
*instructor* Radon's suggestion, is the `logicproof` package.  More information
on other packages and tools can be found [here](logic-latex).

[logic-latex]: http://www.logicmatters.net/latex-for-logicians/nd/

Meanwhile, here's a quick primer on how to use the package (assuming basic TeX
knowledge):

The `logicproof` environment is used to make natural deduction proofs.  It takes
one argument, corresponding to the number of columns in the layout (for our
purposes, it is probably `2`---one for a claim, one for the justification):

```LaTeX
\begin{logicproof}{2}
...
\end{logicproof}
```

Because `logicproof` is based on the LaTeX `tabular` environment, cells
(different columns within a single row) are separated by ampersands `&`.  By
default, the first column defaults to math mode, and subsequent columns default
to text mode.  Different lines in the proof are separated by newline sequences
`\\`.

Numbering is done automatically, so you shouldn't have to manually number each
line in the proof.  To reference another line, either do it manually (for short
proofs) or do it with labels:

```LaTeX
\begin{logicproof}{2}
  A & premise \\
  
\end{logicproof}
```
