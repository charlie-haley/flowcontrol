<template>
  <Layout>
    <div class="pt-8 md:pt-16">
      <div class="flex flex-col items-center">
        <div class="flex flex-col items-center mb-2 text-ui-primary">
          <Logo full=true />
        </div>
        <h1 class="text-ui-primary text-2xl text-center lg:text-2xl">
          open source, multi-platform fan controller.
        </h1>

        <div class="flex justify-center mt-8">
          <g-link
            to="/docs/"
            class="text-colour-primary flex items-center px-6 py-4 ml-auto text-2xl font-bold leading-none border rounded-lg shadow-lg bg-ui-primary border-ui-primary transition-all duration-200 ease-out transform hover:shadow-xl hover:-translate-y-1"
          >
            Get started
            <ArrowRightCircleIcon class="ml-4" size="1x" />
          </g-link>
        </div>
      </div>

      <div class="pt-8 mx-auto mt-8 border-t md:mt-16 md:pt-16 border-top border-ui-border max-w-screen-sm"></div>

      <div class="flex flex-wrap justify-center -mx-4">
        <div class="flex flex-col items-center w-full px-4 mb-8 text-center md:w-1/3">
          <CpuIcon size="3x" class="mb-6 text-ui-primary" />
          <h3 class="font-bold tracking-wide uppercase text-ui-primary">
            Multi-platform
          </h3>
          <p class="text-lg text-left">
            Compatible with most operating systems and architectures.
          </p>
        </div>

        <div class="flex flex-col items-center w-full px-4 mb-8 text-center md:w-1/3">
          <GitPullRequestIcon size="3x" class="mb-6 text-ui-primary" />
          <h3 class="font-bold tracking-wide uppercase text-ui-primary">
            Open Source
          </h3>
          <p class="text-lg text-left">
            Completely open source, all the way down to the hardware.
          </p>
        </div>

        <div class="flex flex-col items-center w-full px-4 mb-8 text-center md:w-1/3">
          <TerminalIcon size="3x" class="mb-6 text-ui-primary" />
          <h3 class="font-bold tracking-wide uppercase text-ui-primary">
            CLI
          </h3>
          <p class="text-lg text-left">
            Command line interface to make scripting and custom integrations even easier
          </p>
        </div>
      </div>

      <p class="mt-8 text-center">
        Open Source. MIT License. <a href="https://github.com/charlie-haley/flowcontrol" class="border-b border-dashed border-ui-primary text-ui-primary">Contribute on GitHub</a>.
      </p>

    </div>
  </Layout>
</template>

<script>
import Logo from '@/components/Logo';
import { ArrowRightCircleIcon, CpuIcon, CodeIcon, TerminalIcon, GitPullRequestIcon } from 'vue-feather-icons';

export default {
  components: {
    Logo,
    ArrowRightCircleIcon,
    CpuIcon,
    CodeIcon,
    TerminalIcon,
    GitPullRequestIcon
  },

  metaInfo() {
    const title = 'open source, multi-platform fan controller.';
    const description = 'flowcontrol is a completely open source, multi-platform fan controller.';

    return {
      title: title,
      meta: [
        {
          name: 'description',
          content: description
        },
        {
          key: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          key: 'twitter:title',
          name: 'twitter:title',
          content: title,
        },
        {
          key: 'og:description',
          name: 'og:description',
          content: description,
        },
        {
          key: 'twitter:description',
          name: 'twitter:description',
          content: description,
        },
      ]
    }
  }
}
</script>

<style>
.home-links a {
  margin-right: 1rem;
}
</style>
