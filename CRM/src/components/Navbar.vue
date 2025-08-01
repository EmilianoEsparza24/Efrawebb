<!-- src/components/Navbar.vue -->
<template>
  <nav class="bg-white shadow px-6 py-4 flex justify-between items-center">
    <div class="text-xl font-bold">CRM</div>
    <div class="flex gap-4 items-center">
      <button
        @click="$emit('logout')"
        class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600"
      >
        Cerrar sesión
      </button>
    </div>
  </nav>
</template>
