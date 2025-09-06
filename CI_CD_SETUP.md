# CI/CD Pipeline Setup

This project now uses a modern CI/CD pipeline with separate build and deploy processes, artifacts, and comprehensive quality checks.

## Workflow Overview

### 1. Main CI/CD Pipeline (`.github/workflows/deploy.yml`)
- **Triggers**: Push to `main` or `develop`, PRs to `main`
- **Build Job**: 
  - Installs dependencies
  - Runs tests with coverage
  - Builds the application
  - Uploads build artifacts (retained for 30 days)
  - Uploads test coverage (retained for 7 days)
- **Deploy Job**: 
  - Only runs on `main` branch pushes
  - Downloads build artifacts
  - Deploys to GitHub Pages

### 2. Preview Deployment (`.github/workflows/preview.yml`)
- **Triggers**: Pull requests to `main`
- **Features**:
  - Builds preview version with demo credentials
  - Creates downloadable artifacts for each PR
  - Comments on PR with build status

### 3. Quality Checks (`.github/workflows/quality.yml`)
- **Triggers**: Push to any branch, PRs to `main`/`develop`
- **Checks**:
  - Code linting
  - Code formatting
  - Security audit
  - Bundle size analysis

## Key Benefits

### ✅ Artifacts & Separation
- Build artifacts are stored separately from deployment
- Can deploy the same build to multiple environments
- Faster deployments (no rebuild needed)
- Better debugging with downloadable artifacts

### ✅ Quality Gates
- All code must pass tests before deployment
- Automated security audits
- Code formatting and linting checks
- Bundle size monitoring

### ✅ Preview Deployments
- Safe testing of changes in PRs
- Isolated preview builds
- No impact on production

## Available Scripts

```bash
# Development
npm start                 # Start development server
npm test                  # Run tests in watch mode
npm run test:ci          # Run tests with coverage (CI mode)

# Code Quality
npm run lint             # Check code for linting errors
npm run lint:fix         # Fix linting errors automatically
npm run format           # Format code with Prettier
npm run format:check     # Check if code is properly formatted

# Build & Deploy
npm run build            # Build for production
npm run deploy           # Deploy to GitHub Pages (manual)
npm run analyze          # Analyze bundle size

# Local Development Setup
npm ci                   # Install dependencies (recommended for CI)
npm install              # Install dependencies
```

## Environment Variables

The following secrets need to be configured in GitHub repository settings:

- `REACT_APP_EMAILJS_SERVICE_ID`
- `REACT_APP_EMAILJS_TEMPLATE_ID` 
- `REACT_APP_EMAILJS_PUBLIC_KEY`

## Deployment Process

1. **Development**: Work on feature branches
2. **Pull Request**: Create PR to `main` - triggers preview build
3. **Review**: Code review with automated quality checks
4. **Merge**: Merge to `main` - triggers production deployment
5. **Live**: Changes are automatically deployed to GitHub Pages

## Monitoring

- Build status visible in GitHub Actions tab
- Artifacts downloadable for 30 days
- Coverage reports available for 7 days
- Bundle size tracked in quality checks

## Troubleshooting

If deployment fails:
1. Check GitHub Actions logs
2. Verify all required secrets are set
3. Ensure `homepage` in package.json is correct
4. Check GitHub Pages settings in repository

## Next Steps

Consider adding:
- Lighthouse CI for performance monitoring
- Dependabot for dependency updates
- Branch protection rules
- Required status checks
- Custom domain setup (uncomment CNAME in deploy.yml)