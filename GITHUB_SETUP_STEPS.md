# 🔧 GitHub Setup Steps for Gyanplanet Institute

Follow these exact steps to set up your repository and deploy to GitHub Pages.

## 📝 Quick Setup Summary

### 1. Create GitHub Repository
1. Go to [github.com](https://github.com) and sign in
2. Click "+" → "New repository"
3. Repository name: `gyanplanet_institute`
4. Description: "Official website for Gyanplanet Institute - Educational courses and resources"
5. Make it **Public**
6. **Don't** check any initialization options
7. Click "Create repository"

### 2. Push Your Code
```bash
# In your project directory
git init
git add .
git commit -m "Initial commit: Gyanplanet Institute website"
git branch -M main
git remote add origin https://github.com/Nileshunique/gyanplanet_institute.git
git push -u origin main
```

### 3. Enable GitHub Pages
1. Go to repository Settings → Pages
2. Under "Source", select **"GitHub Actions"**
3. Save the settings

### 4. Add EmailJS Secrets
Go to Settings → Secrets and variables → Actions → New repository secret

Add these 3 secrets:
```
Name: REACT_APP_EMAILJS_SERVICE_ID
Value: service_3vod5cp

Name: REACT_APP_EMAILJS_TEMPLATE_ID  
Value: template_hx8y4tk

Name: REACT_APP_EMAILJS_PUBLIC_KEY
Value: fhq1GKfSgFDBw32aI
```

### 5. Wait for Deployment
- Go to Actions tab
- Wait for green checkmark ✅
- Visit: https://Nileshunique.github.io/gyanplanet_institute/

---

## 🔍 Detailed GitHub Configuration Steps

### Step 1: Repository Settings

**Repository Details:**
- Owner: `nileshunique`
- Repository name: `gyanplanet_institute`
- Description: `Official website for Gyanplanet Institute - Educational courses and resources`
- Website: `https://Nileshunique.github.io/gyanplanet_institute`
- Topics: `education`, `react`, `tailwindcss`, `github-pages`, `institute`, `courses`

**Repository Settings to Configure:**

1. **General Settings**
   - ✅ Public repository
   - ✅ Issues enabled
   - ✅ Wiki disabled
   - ✅ Projects disabled
   - ✅ Preserve this repository (optional)

2. **Features**
   - ✅ Wikis: Disabled
   - ✅ Issues: Enabled
   - ✅ Sponsorships: Disabled
   - ✅ Projects: Disabled

### Step 2: Branch Protection (Optional but Recommended)

1. Go to Settings → Branches
2. Click "Add rule"
3. Branch name pattern: `main`
4. Configure:
   - ✅ Require a pull request before merging
   - ✅ Require status checks to pass before merging
   - ✅ Require branches to be up to date before merging
   - ✅ Include administrators

### Step 3: GitHub Pages Configuration

1. **Navigate to Pages Settings**
   - Repository → Settings → Pages (in left sidebar)

2. **Configure Source**
   - Source: **GitHub Actions** (not Deploy from a branch)
   - This enables our custom workflow

3. **Custom Domain (Optional)**
   - If you have a domain: `gyanplanet_institute.com`
   - ✅ Enforce HTTPS

### Step 4: Environment Variables Setup

**Required Secrets:**
```
REACT_APP_EMAILJS_SERVICE_ID=service_3vod5cp
REACT_APP_EMAILJS_TEMPLATE_ID=template_hx8y4tk
REACT_APP_EMAILJS_PUBLIC_KEY=fhq1GKfSgFDBw32aI
```

**How to Add Secrets:**
1. Repository → Settings → Secrets and variables → Actions
2. Click "New repository secret"
3. Add each secret individually
4. Make sure names match exactly (case-sensitive)

### Step 5: Workflow Permissions

1. Go to Settings → Actions → General
2. Under "Workflow permissions":
   - Select "Read and write permissions"
   - ✅ Allow GitHub Actions to create and approve pull requests

### Step 6: Repository Topics and Description

Add these topics to help with discoverability:
- `education`
- `react`
- `tailwindcss`
- `github-pages`
- `institute`
- `courses`
- `website`
- `responsive`

---

## 🚀 Deployment Verification Steps

### 1. Check GitHub Actions
1. Go to Actions tab
2. Look for "Deploy to GitHub Pages" workflow
3. Ensure it shows green checkmark ✅
4. If red ❌, click to see error details

### 2. Verify Website Access
1. Visit: https://Nileshunique.github.io/gyanplanet_institute/
2. Check all pages load:
   - Home: `/`
   - Courses: `/courses`
   - Books: `/books`
   - Contact: `/contact`

### 3. Test Functionality
- ✅ Navigation works
- ✅ Images load
- ✅ Contact form submits
- ✅ Mobile responsive
- ✅ No console errors

---

## 🔧 Troubleshooting Common Issues

### Issue: Build Fails
**Solution:**
1. Check Actions tab for error details
2. Verify all dependencies in package.json
3. Ensure no syntax errors in code

### Issue: 404 Page Not Found
**Solution:**
1. Verify GitHub Pages is enabled
2. Check repository is public
3. Ensure workflow completed successfully

### Issue: Contact Form Not Working
**Solution:**
1. Verify EmailJS secrets are set correctly
2. Check EmailJS service is active
3. Test EmailJS configuration in their dashboard

### Issue: Images Not Loading
**Solution:**
1. Check image URLs in siteData.js
2. Ensure images are publicly accessible
3. Verify no CORS issues

---

## 📋 Post-Deployment Checklist

After successful deployment:

- [ ] Website loads at correct URL
- [ ] All pages are accessible
- [ ] Contact form works
- [ ] Images display properly
- [ ] Mobile version works
- [ ] No console errors
- [ ] SEO meta tags are present
- [ ] Social sharing works

---

## 🎯 Next Steps After Deployment

1. **Test Everything**
   - Go through every page
   - Test all interactive elements
   - Verify on different devices

2. **Monitor Performance**
   - Check page load speeds
   - Monitor Core Web Vitals
   - Watch for any errors

3. **SEO Setup**
   - Submit sitemap to Google Search Console
   - Verify structured data
   - Check meta tags

4. **Analytics (Optional)**
   - Set up Google Analytics
   - Configure conversion tracking
   - Monitor user behavior

---

## 📞 Support Resources

- **GitHub Pages Documentation:** https://docs.github.com/en/pages
- **GitHub Actions Documentation:** https://docs.github.com/en/actions
- **EmailJS Documentation:** https://www.emailjs.com/docs/
- **React Documentation:** https://reactjs.org/docs/
- **Tailwind CSS Documentation:** https://tailwindcss.com/docs

---

**🎉 Congratulations! Your Gyanplanet Institute website is now live!**

**Live URL:** https://Nileshunique.github.io/gyanplanet_institute/