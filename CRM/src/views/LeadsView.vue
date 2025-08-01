<template>
  <div class="min-h-screen bg-gradient-to-br from-blue-100 to-blue-200 text-gray-900">
    <!-- Navbar -->
    <Navbar @logout="logout" />

    <!-- Leads Table -->
    <div class="p-6 max-w-7xl mx-auto">
      <h1 class="text-4xl font-bold text-blue-700 mb-8 text-center">📋 Panel de Leads</h1>

      <div class="overflow-x-auto bg-white shadow-xl rounded-xl border border-blue-200">
        <table v-if="leads.length" class="w-full table-auto rounded overflow-hidden">
          <thead class="bg-blue-600 text-white text-sm uppercase">
            <tr>
              <th class="p-4 text-left">Nombre</th>
              <th class="p-4 text-left">Correo</th>
              <th class="p-4 text-left">Teléfono</th>
              <th class="p-4 text-left">Mensaje</th>
              <th class="p-4 text-left">Estado</th>
              <th class="p-4 text-left">Cambiar estado</th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="lead in paginatedLeads"
              :key="lead.id"
              class="border-t hover:bg-blue-50 transition-colors text-sm"
            >
              <td class="p-4">{{ lead.name }}</td>
              <td class="p-4">{{ lead.email }}</td>
              <td class="p-4">{{ lead.phone }}</td>
              <td class="p-4">{{ lead.message }}</td>
              <td class="p-4 capitalize font-semibold text-blue-700">{{ lead.status }}</td>
              <td class="p-4">
                <select
                  v-model="lead.status"
                  @change="updateStatus(lead)"
                  class="border border-blue-300 rounded-md px-3 py-1.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white"
                >
                  <option value="nuevo">Nuevo</option>
                  <option value="contactado">Contactado</option>
                  <option value="descartado">Descartado</option>
                </select>
              </td>
            </tr>
          </tbody>
        </table>

        <!-- Paginación -->
        <div v-if="totalPages > 1" class="flex justify-center items-center space-x-4 py-6">
          <button
            @click="prevPage"
            :disabled="currentPage === 1"
            class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 disabled:opacity-50 disabled:cursor-not-allowed transition"
          >
            ← Anterior
          </button>
          <span class="text-gray-700 font-medium">
            Página {{ currentPage }} de {{ totalPages }}
          </span>
          <button
            @click="nextPage"
            :disabled="currentPage === totalPages"
            class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 disabled:opacity-50 disabled:cursor-not-allowed transition"
          >
            Siguiente →
          </button>
        </div>

        <p v-else class="p-6 text-gray-600 text-center">No hay leads disponibles por el momento.</p>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref, computed } from 'vue'
import axios from 'axios'
import { useRouter } from 'vue-router'
import Navbar from '../components/Navbar.vue'

const leads = ref([])
const router = useRouter()
const currentPage = ref(1)
const perPage = ref(5)

const paginatedLeads = computed(() => {
  const start = (currentPage.value - 1) * perPage.value
  return leads.value.slice(start, start + perPage.value)
})

const totalPages = computed(() => {
  return Math.ceil(leads.value.length / perPage.value)
})

const nextPage = () => {
  if (currentPage.value < totalPages.value) currentPage.value++
}

const prevPage = () => {
  if (currentPage.value > 1) currentPage.value--
}

const fetchLeads = async () => {
  try {
    const res = await axios.get(import.meta.env.VITE_API_URL + '/leads', {
      headers: { Authorization: 'Bearer ' + localStorage.getItem('token') }
    })
    leads.value = res.data
  } catch (e) {
    router.push('/login')
  }
}

const updateStatus = async (lead) => {
  try {
    await axios.patch(`${import.meta.env.VITE_API_URL}/leads/${lead.id}`, {
      status: lead.status
    }, {
      headers: { Authorization: 'Bearer ' + localStorage.getItem('token') }
    })
  } catch (e) {
    console.error('Error al actualizar el estado', e)
  }
}

const logout = () => {
  localStorage.removeItem('token')
  router.push('/login')
}

onMounted(fetchLeads)
</script>
