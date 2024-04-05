// firebaseConfig.js

import { initializeApp } from 'firebase/app';
import { getFirestore } from 'firebase/firestore';

const firebaseConfig = {
    apiKey: "AIzaSyC3zpQvuGRfa7efO4ajNFHNxV6B7IkjlQ8",
    authDomain: "project-5-5b1ce.firebaseapp.com",
    projectId: "project-5-5b1ce",
    storageBucket: "project-5-5b1ce.appspot.com",
    messagingSenderId: "205380937643",
    appId: "1:205380937643:web:944eff6087ae36d0fad4ee"
};

const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

export default db;


