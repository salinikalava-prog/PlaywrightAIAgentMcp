# Playwright Robot Framework Project

A Robot Framework project powered by Playwright for browser automation testing.

## Setup

### Prerequisites
- Python 3.7+
- pip

### Installation

1. Create and activate the virtual environment:
   ```bash
   .\\.venv\\Scripts\\Activate.ps1  # Windows PowerShell
   source .venv/bin/activate     # Linux/macOS
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Project Structure

```
PlaywrightAIAgentMcp/
├── .venv/               # Virtual environment (excluded from git)
├── tests/               # Robot Framework test files (.robot)
│   └── example.robot
├── resources/           # Shared Robot Framework resources and keywords
│   └── common.robot
├── .gitignore
├── README.md
└── requirements.txt     # Python dependencies
```

## Running Tests

### Run all tests
```bash
robot tests/
```

### Run specific test file
```bash
robot tests/example.robot
```

### Run in headed mode (show browser)
```bash
robot --variable BROWSER_HEADLESS:false tests/
```

### Generate reports
Reports are automatically generated in the working directory:
- `report.html` - Main test report
- `log.html` - Detailed execution log
- `output.xml` - Machine-readable output

## Technologies

- **Robot Framework**: Acceptance testing framework with keyword-driven approach
- **robotframework-browser**: Browser library powered by Playwright
- **Playwright**: Cross-browser automation engine

## Documentation

- [Robot Framework Documentation](https://robotframework.org/)
- [Browser Library Documentation](https://robotframework-browser.org/)
- [Playwright Documentation](https://playwright.dev/python/)
