# Smart Tourist Companion

A comprehensive tourist safety monitoring and incident response system built with Next.js, Firebase, and AI-powered features.

## Features

- **AI-Powered Destination Planning**: Get personalized travel recommendations
- **Real-time Safety Monitoring**: Track incidents and safety alerts
- **Emergency Response System**: Quick access to emergency contacts and services
- **Interactive Maps**: Visualize locations and nearby services
- **Multi-language Support**: Translate content for international tourists
- **User Authentication**: Secure login and user management

## Setup Instructions

### Prerequisites

1. Install Node.js (v18 or later) and npm
2. Set up a Firebase project
3. Get a Google Maps API key
4. Get a Gemini AI API key

### Installation

1. **Clone and setup the project:**
   ```bash
   cd hackathon
   npm install
   ```

2. **Configure environment variables:**
   - Copy the Firebase configuration from your Firebase console
   - Add your API keys to the `.env` file (use `env-template.txt` as reference):
   ```
   NEXT_PUBLIC_GOOGLE_MAPS_API_KEY=your_maps_api_key
   GEMINI_API_KEY=your_gemini_api_key
   
   # Firebase Configuration
   NEXT_PUBLIC_FIREBASE_API_KEY=your_firebase_api_key
   NEXT_PUBLIC_FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
   NEXT_PUBLIC_FIREBASE_PROJECT_ID=your_project_id
   NEXT_PUBLIC_FIREBASE_STORAGE_BUCKET=your_project.appspot.com
   NEXT_PUBLIC_FIREBASE_MESSAGING_SENDER_ID=your_sender_id
   NEXT_PUBLIC_FIREBASE_APP_ID=your_app_id
   NEXT_PUBLIC_FIREBASE_MEASUREMENT_ID=your_measurement_id
   ```

3. **Run the development server:**
   ```bash
   npm run dev
   ```

4. **For AI features, start the Genkit server:**
   ```bash
   npm run genkit:dev
   ```

### Demo Credentials

For testing purposes, you can use these demo credentials:
- **Email**: user@example.com
- **Password**: password123

## Project Structure

```
src/
├── ai/                 # AI-powered features and Genkit configuration
├── app/               # Next.js app router pages
├── components/        # React components
│   ├── features/      # Feature-specific components
│   ├── layout/        # Layout components
│   └── ui/           # Reusable UI components
├── context/          # React context providers
├── hooks/            # Custom React hooks
└── lib/              # Utility functions and configurations
```

## Key Issues Fixed

1. ✅ **Missing src directory**: Copied source files from download folder to correct location
2. ✅ **Environment configuration**: Created proper `.env` file and template
3. ✅ **Firebase setup**: Updated Firebase configuration to use environment variables
4. ✅ **Git configuration**: Created `.gitignore` file from template
5. ✅ **Project structure**: Organized all files in correct Next.js structure

## Next Steps

1. Install Node.js and npm if not already installed
2. Configure your Firebase project and add the credentials to `.env`
3. Add your Google Maps API key to `.env`
4. Run `npm install` to install dependencies
5. Start the development server with `npm run dev`

## Technologies Used

- **Frontend**: Next.js 15, React 18, TypeScript
- **Styling**: Tailwind CSS, Radix UI components
- **Backend**: Firebase (Auth, Firestore)
- **AI**: Google Gemini AI via Genkit
- **Maps**: Google Maps API
- **State Management**: React Context
