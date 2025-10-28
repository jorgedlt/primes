# Primes Generator

A collection of bash scripts for generating and testing prime numbers using OpenSSL.

## Features

- **Range Prime Generation** (`mkprimes.sh`): Generate prime numbers within a specified range
- **Random Prime Generation** (`mkhex.sh`): Generate random large prime numbers and log them

## Dependencies

- `openssl` - for prime number generation and testing
- `bc` - for hex to decimal conversion
- `awk` - for text processing

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd primes
   ```

2. Make scripts executable:
   ```bash
   chmod +x mkprimes.sh mkhex.sh
   ```

## Usage

### Generate Primes in a Range

```bash
./mkprimes.sh <start> <end>
```

**Example:**
```bash
./mkprimes.sh 10 20
# Output: 11 13 17 19
```

### Generate Random Large Primes

```bash
./mkhex.sh <count>
```

**Example:**
```bash
./mkhex.sh 5
# Output:
# primes 2
# k 3
#
# Found primes:
# 26753382241818666882845034028415215343
# 249747105992249423757857373626253326899
```

## Output Explanation

### mkprimes.sh
- Outputs prime numbers found in the specified range, one per line

### mkhex.sh
- `primes X`: Number of prime numbers found
- `k Y`: Number of non-prime numbers tested
- **Found primes:** section (when primes > 0): Lists all discovered prime numbers
- Primes are also logged to `primes.log` for reference

## How It Works

- **mkprimes.sh**: Tests each number in the range using `openssl prime`
- **mkhex.sh**: Generates random 128-bit numbers, tests primality, logs primes to file
- Both scripts use OpenSSL's cryptographic prime generation for reliable results

## Notes

- Large prime generation can be computationally intensive
- Random prime generation uses 128-bit numbers by default
- All primes are verified using OpenSSL's primality testing

## Contributing

See [AGENTS.md](AGENTS.md) for coding guidelines and development setup.
