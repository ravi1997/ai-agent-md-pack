# Workflow: Performance Profiling + Fix

## Inputs
- endpoint/path, request size, concurrency expectations
- observed latency and resource usage

## Steps
1. Measure:
   - add timing logs (redacted) per route
   - enable prometheus metrics if present
2. Identify bottleneck:
   - DB query count / slow queries
   - N+1 patterns
   - serialization overhead
   - blocking I/O in request thread
3. Fix:
   - add indexes
   - batch queries
   - caching (safe keys, TTL)
   - background jobs for long work
4. Regression protection:
   - performance test or threshold assertions in tests
5. Verify:
   - load test (wrk/k6) in staging

## Output
- Root cause
- Code/config patch
- Before/after measurement steps
