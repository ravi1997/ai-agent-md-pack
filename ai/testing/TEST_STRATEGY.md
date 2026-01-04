# Test Strategy Matrix

## Decide level
- Unit: pure functions, utilities, validators
- Integration: Flask route tests using test client
- System: docker-compose environment tests (staging/dev)

## Typical choices
- Bug in route logic → integration test (Flask client) + unit tests for helpers
- DB query issue → integration test with temporary DB + migration check
- Nginx/gateway → system test (compose) + smoke test endpoints

## Required for any bugfix
1. Add failing test OR clear reproduction steps
2. Make fix
3. Ensure test passes
4. Add regression coverage for edge case
