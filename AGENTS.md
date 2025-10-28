# AGENTS.md

## Project Overview
This is a simple bash-based prime number generation toolkit with two main scripts:
- `mkprimes.sh`: Sequential prime testing within a range
- `mkhex.sh`: Random large prime generation with logging

## Build/Lint/Test Commands
- **Generate primes in range**: `./mkprimes.sh <start> <end>` (e.g., `./mkprimes.sh 100 200`)
- **Generate random hex primes**: `./mkhex.sh <count>` (e.g., `./mkhex.sh 10`)
- **Test script functionality**: Run with small inputs and verify output format
- No formal linting or testing framework - scripts are simple and self-contained
- **Manual testing**: Check `primes.log` output and console display

## Project Structure
```
primes/
├── mkprimes.sh      # Range-based prime generator
├── mkhex.sh         # Random prime generator
├── primes.log       # Generated primes log (created by mkhex.sh)
├── README.md        # User documentation
└── AGENTS.md        # Development guidelines (this file)
```

## Dependencies
- `openssl`: Core cryptographic functions for prime generation/testing
- `bc`: Arbitrary precision calculator for hex→decimal conversion
- `awk`: Text processing for parsing openssl output

## Code Style Guidelines

### Shell Scripting
- Use bash shebang: `#!/bin/bash`
- Use `let` for arithmetic operations: `let N++`
- Use double parentheses for numeric comparisons: `(( N <= $2 ))`
- Quote variables in conditionals: `[ -z "$result" ]`
- Use descriptive variable names (N, p, k, result)
- Include usage comments at script top
- End with source attribution if applicable

### Error Handling
- Scripts include basic argument validation (mkprimes.sh checks for 2 args)
- Assume valid numeric inputs for simplicity
- No explicit error checking beyond argument count - relies on openssl command success
- Output goes to stdout or primes.log file
- Consider adding input validation for production use

### Naming Conventions
- Scripts use lowercase with descriptive names (mkprimes.sh, mkhex.sh)
- Variables use uppercase for main inputs (N), lowercase for counters (p, k)
- Log files use .log extension (primes.log)

### Formatting
- 2-space indentation
- Blank lines between logical sections
- Comments start with # and describe purpose

## Development Notes
- Scripts are designed for simplicity over robustness
- OpenSSL provides cryptographically strong prime generation
- Random prime generation uses 128-bit numbers (16 hex bytes)
- Consider performance implications for large ranges or counts
- Test with small inputs first to verify functionality