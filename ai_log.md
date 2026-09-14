\# AI-Assisted Prompting Log



\## Prompt #1: Safe Floating-Point Target Variance Report

\*   \*\*Role\*\*: Senior Database Engineer \& SQL Consultant.

\*   \*\*Context\*\*: Building a strategic retail reporting framework on a local SQLite e-commerce instance.

\*   \*\*Task\*\*: Write a dynamic derived-fields query matching revenue sums against an integer target table. Compute pure variances and target tier states.

\*   \*\*Constraints\*\*: Must strictly eliminate truncation issues by applying a clear `100.0` real float multiplier before conducting division. Use standard SQLite nested `CASE WHEN`.

\*   \*\*Format\*\*: Clean ANSI SQL script layout.

\*   \*\*Verification Step\*\*: I manually executed the generated query against the `bigbasket\_capstone.db` instance in my terminal and checked the output rows for the 'Bakery' category against the raw sheets data to confirm that the variance calculation yielded correct percentages without integer truncation.



