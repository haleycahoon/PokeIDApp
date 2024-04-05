import { createRouter, createWebHashHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import Women from '../views/Women.vue';
import PageTwo from '../views/PageTwo.vue';
import Men from '../views/Men.vue';
import Secret from '../views/Secret.vue';
import Register from '../views/Register.vue';
import SignIn from '../views/SignIn.vue';
import QuestionsAndAnswers from '../views/QuestionsAndAnswers.vue';
import Careers from '../views/Careers.vue';


import { getAuth } from 'firebase/auth';

const router = createRouter({
  history: createWebHashHistory(),
  routes: [
    { path: '/', name: 'home', component: HomeView },
    { path: '/Women', name: 'women', component: Women },
    { path: '/PageTwo', name: 'two', component: PageTwo },
    { path: '/Men', name: 'men', component: Men },
    { path: '/Secret', name: 'secret', component: Secret},
    { path: '/Register', name: 'register', component: Register },
    { path: '/SignIn', name: 'signin', component: SignIn },
    { path: '/QuestionsAndAnswers', name: 'questionsandanswers', component: QuestionsAndAnswers },
    { path: '/Careers', name: 'careers', component: Careers },
    {
      path: '/Secret',
      name: 'Secret',
      component: Secret,
      meta: { requiresAuth: true },
    },
    
  ],
});
export default router;
