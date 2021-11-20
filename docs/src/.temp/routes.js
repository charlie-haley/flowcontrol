export default [
  {
    path: "/docs/pcb/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/local-development/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/firmware/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/desktop-application/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/documentation/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/cli/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    path: "/docs/",
    component: () => import(/* webpackChunkName: "page--src-templates-markdown-page-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\templates\\MarkdownPage.vue")
  },
  {
    name: "404",
    path: "/404/",
    component: () => import(/* webpackChunkName: "page--src-pages-404-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\pages\\404.vue")
  },
  {
    name: "home",
    path: "/",
    component: () => import(/* webpackChunkName: "page--src-pages-index-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\pages\\Index.vue")
  },
  {
    name: "*",
    path: "*",
    component: () => import(/* webpackChunkName: "page--src-pages-404-vue" */ "C:\\Development\\flowcontrol\\docs\\src\\pages\\404.vue")
  }
]

