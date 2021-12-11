# node-react-tailwind

## Initialize
```
npx create-react-app@next --scripts-version=@next --template=cra-template@next rtw-project
cd rtw-project
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
```
Update `tailwind.config.js` file:
```
module.exports = {
  content: [
    "./src/**/*.{js,jsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```
Add @tailwind directives to `/src/index.css`
```
@tailwind base;
@tailwind components;
@tailwind utilities;
```
Start the build process
```
npm run start
```
Goto: `127.0.0.1:3000`


## Resources
- [Tailwind CSS w/React ApA](https://tailwindcss.com/docs/guides/create-react-app)
