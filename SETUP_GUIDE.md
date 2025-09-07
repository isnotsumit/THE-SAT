# Smart Tourist Companion - Complete Setup Guide

## Prerequisites Installation

### 1. Install Node.js and npm

**Option A: Download from Official Website**
1. Visit [nodejs.org](https://nodejs.org/)
2. Download the LTS version (recommended)
3. Run the installer and follow the setup wizard
4. Restart your terminal/command prompt

**Option B: Using Chocolatey (Windows Package Manager)**
```powershell
# Install Chocolatey first (if not installed)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Node.js
choco install nodejs
```

**Verify Installation:**
```bash
node --version
npm --version
```

## Project Setup

### 1. Install Dependencies
```bash
cd hackathon
npm install
```

### 2. Environment Configuration

The project includes a template file `env-template.txt`. Copy this to `.env` and configure:

```bash
# Copy template to .env
copy env-template.txt .env
```

Edit `.env` file with your API keys:
```
NEXT_PUBLIC_GOOGLE_MAPS_API_KEY=your_google_maps_api_key_here
GEMINI_API_KEY=AIzaSyCRaRQgpvz2Y9rTj9wpdRJBhMaTEIQchcI

# Firebase Configuration (Optional - Mock implementation included)
NEXT_PUBLIC_FIREBASE_API_KEY=your_firebase_api_key
NEXT_PUBLIC_FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
NEXT_PUBLIC_FIREBASE_PROJECT_ID=your_project_id
NEXT_PUBLIC_FIREBASE_STORAGE_BUCKET=your_project.appspot.com
NEXT_PUBLIC_FIREBASE_MESSAGING_SENDER_ID=your_sender_id
NEXT_PUBLIC_FIREBASE_APP_ID=your_app_id
NEXT_PUBLIC_FIREBASE_MEASUREMENT_ID=your_measurement_id
```

### 3. API Keys Setup

**Google Maps API Key:**
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select existing
3. Enable Maps JavaScript API
4. Create credentials (API Key)
5. Add the key to your `.env` file

**Gemini AI API Key:**
- Already provided in the template
- For production, get your own from [Google AI Studio](https://makersuite.google.com/)

## Running the Application

### 1. Development Server
```bash
npm run dev
```
The app will be available at `http://localhost:9002`

### 2. AI Features (Optional)
```bash
npm run genkit:dev
```

### 3. Type Checking
```bash
npm run typecheck
```

### 4. Build for Production
```bash
npm run build
npm start
```

## Features Overview

### 🔐 Authentication System
- **Demo Credentials:**
  - Email: `user@example.com`
  - Password: `password123`
- Mock authentication system (no external Firebase required)
- Persistent login state using localStorage

### 🤖 AI-Powered Features
- **Destination Planner:** Get travel recommendations and cost estimates
- **Language Translation:** Multi-language support for tourists
- **Nearby Services:** Find hotels, restaurants, and transportation

### 🗺️ Interactive Map
- Mock map implementation with location markers
- Safety incident tracking
- Emergency services locator
- Ready for Google Maps integration

### 🚨 Safety Features
- **Emergency Contacts:** Quick access to local emergency services
- **Incident Reporting:** Report and track safety incidents
- **Disaster Alerts:** Real-time safety notifications
- **Call History:** Track emergency communications

## Project Structure

```
src/
├── ai/                     # AI-powered features
│   ├── flows/             # AI workflow implementations
│   ├── schemas/           # Data validation schemas
│   └── genkit.ts          # AI configuration
├── app/                   # Next.js app router pages
│   ├── dashboard/         # Main dashboard
│   ├── login/            # Authentication pages
│   └── layout.tsx        # Root layout
├── components/           # React components
│   ├── features/         # Feature-specific components
│   ├── layout/           # Layout components
│   └── ui/              # Reusable UI components
├── context/             # React context providers
├── hooks/               # Custom React hooks
└── lib/                 # Utility functions
```

## Troubleshooting

### Common Issues

**1. Node.js not found:**
- Ensure Node.js is installed and added to PATH
- Restart terminal after installation

**2. npm install fails:**
- Clear npm cache: `npm cache clean --force`
- Delete `node_modules` and `package-lock.json`, then reinstall

**3. Port 9002 already in use:**
- Change port in `package.json` scripts
- Or kill the process using the port

**4. TypeScript errors:**
- Run `npm run typecheck` to see detailed errors
- Most errors are handled with mock implementations

### Development Mode Features

- **Mock Firebase:** No external Firebase setup required
- **Mock AI Services:** Predefined responses for testing
- **Mock Maps:** Interactive placeholder with sample data
- **Demo Authentication:** Works without external auth providers

## Production Deployment

For production deployment:

1. **Configure Real APIs:**
   - Set up actual Firebase project
   - Configure Google Maps API
   - Set up Gemini AI API

2. **Environment Variables:**
   - Use production API keys
   - Configure proper Firebase settings

3. **Build and Deploy:**
   ```bash
   npm run build
   npm start
   ```

## Support

If you encounter issues:
1. Check the console for error messages
2. Verify all dependencies are installed
3. Ensure API keys are properly configured
4. Check the troubleshooting section above

The application is designed to work out-of-the-box with mock data, so you can start development immediately after installing Node.js and running `npm install`.
