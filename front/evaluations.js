Vue.component('main-header', {
  template: `
  <nav class="flex items-center justify-between flex-wrap bg-blue-800 p-6">
    <div class="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
      <div class="text-sm lg:flex-grow">
        <h1 class="text-white text-4xl">{{ title }}</h1>
      </div>
      <div>
        <a href="#" class="inline-block text-sm px-4 py-2 leading-none border rounded text-white border-white hover:border-transparent hover:text-blue-500 hover:bg-white mt-4 lg:mt-0">Reporte</a>
      </div>
    </div>
  </nav>
  `,
  data() {
    return {
      title: 'Evaluaciones',
    }
  }
});