# Compiler Design Project – Lex & Yacc Parser for Maximum Element

## Overview

This project demonstrates the implementation of a simple compiler front-end using **Lex (Flex)** and **Yacc (Bison)**. The project performs lexical analysis and syntax analysis for a custom programming language that finds the **maximum element in an array**. It uses Flex to generate tokens from the source code and Bison to parse the tokens according to the defined grammar rules, validating the syntax of the program.

---

## Features

- Lexical analysis using Lex (Flex)
- Syntax analysis using Yacc (Bison)
- Recognition of keywords, identifiers, numbers, operators, and delimiters
- Supports variable declarations and array declarations
- Supports assignment statements
- Supports `for` loops and `if` conditions
- Parses a program to find the maximum element in an array
- Detects and reports syntax errors

---

## Technologies Used

- C Programming
- Lex (Flex)
- Yacc (Bison)
- GCC Compiler
- Linux / Ubuntu

---

## Project Structure

```text
Compiler-Design-Lex-Yacc/
│── max.l              # Lex source file
│── max.y              # Yacc source file
│── max.txt            # Sample valid input
│── invalid_max.txt    # Sample invalid input
│── max.output         # Output file
│── maxprog            # Executable
│── lex.yy.c           # Generated Lex source
│── max.tab.c          # Generated Yacc source
│── max.tab.h          # Generated header file
│── README.md
```

---

## Prerequisites

Before running the project, install the following packages:

```bash
sudo apt update
sudo apt install flex bison gcc
```

---

## How to Run

### Generate the Lex Source File

```bash
flex max.l
```

### Generate the Yacc Parser

```bash
bison -d max.y
```

### Compile the Project

```bash
gcc lex.yy.c max.tab.c -lfl -o maxprog
```

### Execute the Program

```bash
./maxprog
```

---

## Sample Input

```text
int main()
begin
int L[5];
int maxval = L[0];
for i = 1 to n - 1 do
if L[i] > maxval
maxval = L[i];
endif
endfor
end
```

---

## Expected Output

```text
Valid Program
Maximum element computed successfully.
```

If the input contains invalid syntax, the parser reports an appropriate syntax error.

---

## Learning Outcomes

- Understand the phases of compiler design
- Learn lexical analysis using Flex
- Learn syntax analysis using Bison
- Create grammar rules for a simple programming language
- Generate tokens from source code
- Build a basic compiler front-end
- Detect syntax errors during parsing
- Integrate Flex and Bison into a single compiler project

---

## Concepts Covered

- Compiler Design
- Lexical Analysis
- Syntax Analysis
- Context-Free Grammar (CFG)
- Token Generation
- Parsing
- Error Detection
- Flex and Bison Integration
- Parser Generation
- Scanner Generation

---

## Future Enhancements

- Add semantic analysis
- Implement symbol table generation
- Support arithmetic expressions
- Generate intermediate code
- Improve syntax error recovery
- Extend the language with additional control statements


## License

This project is developed for educational purposes as part of the **Compiler Design Laboratory**.
