# 🔧 GitHub Pages Deployment Troubleshooting Guide

## 🚨 **Current Issues & Solutions**

### Issue 1: Repository Name Mismatch ✅ FIXED
- **Problem**: Package.json had `gyanplanet_institute` but should be `gyanplanet-institute`
- **Solution**: Updated homepage URL to match repository name

### Issue 2: CNAME Configuration ✅ FIXED
- **Problem**: Workflow had incorrect CNAME configuration
- **Solution**: Commented out CNAME (only needed for custom domains)

## 📋 **Step-by-Step Deployment Check**

### Step 1: Verify Repository Setup

**Check these on GitHub:**

1. **Repository Name**: Must be exactly `gyanplanet-institute`
2. **Repository Visibility**: Must be **Public**
3. **Repository URL**: Should be `https://github.com/Nileshunique/gyanplanet_institute`

### Step 2: Check GitHub Pages Settings

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** in left sidebar
4. Verify these settings:
   ```
   Source: GitHub Actions ✅
   Custom domain: (leave empty for now)
   Enforce HTTPS: ✅ (checked)
   ```

### Step 3: Verify Environment Secrets

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Check these secrets exist:
   ```
   ✅ REACT_APP_EMAILJS_SERVICE_ID
   ✅ REACT_APP_EMAILJS_TEMPLATE_ID  
   ✅ REACT_APP_EMAILJS_PUBLIC_KEY
   ```

### Step 4: Check GitHub Actions Status

1. Go to **Actions** tab in your repository
2. Look for "Deploy to GitHub Pages" workflow
3. Check the status:
   - 🟢 **Green checkmark** = Success
   - 🔴 **Red X** = Failed (click to see error details)
   - 🟡 **Yellow circle** = In progress

### Step 5: Force a New Deployment

If the deployment hasn't triggered, push the fixes:

```bash
# Add the fixed files
git add .
git commit -m "Fix: Update repository name and deployment configuration"
git push origin main
```

## 🔍 **Common Deployment Issues & Solutions**

### Issue: "404 - Page Not Found"

**Possible Causes:**
1. GitHub Pages not enabled
2. Wrong repository name
3. Build failed
4. Wrong branch selected

**Solutions:**
1. Enable GitHub Pages: Settings → Pages → Source: "GitHub Actions"
2. Verify repository name matches package.json homepage
3. Check Actions tab for build errors
4. Ensure pushing to `main` branch

### Issue: "Build Failed" in Actions

**Check these:**
1. **Dependencies**: Run `npm install` locally to verify
2. **Environment Variables**: Ensure all EmailJS secrets are set
3. **Syntax Errors**: Check for any code errors
4. **Node Version**: Workflow uses Node 18 (should work)

**Debug Steps:**
```bash
# Test build locally
npm install
npm run build

# If build fails locally, fix errors first
# If build succeeds locally, check GitHub secrets
```

### Issue: "Actions Not Running"

**Possible Causes:**
1. Workflow file not in correct location
2. YAML syntax errors
3. Repository permissions

**Solutions:**
1. Ensure file is at `.github/workflows/deploy.yml`
2. Check YAML syntax (no tabs, proper indentation)
3. Go to Settings → Actions → General → Allow all actions

### Issue: "Permission Denied" in Actions

**Solution:**
1. Go to Settings → Actions → General
2. Under "Workflow permissions":
   - Select "Read and write permissions"
   - Check "Allow GitHub Actions to create and approve pull requests"

## 🚀 **Manual Deployment Method**

If GitHub Actions isn't working, try manual deployment:

```bash
# Install gh-pages if not already installed
npm install --save-dev gh-pages

# Build and deploy manually
npm run build
npm run deploy
```

## 🔍 **Debugging Steps**
