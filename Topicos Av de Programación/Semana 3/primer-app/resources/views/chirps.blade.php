<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Chirps
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    Bienvenidos a la pagina Chirps
                </div>
                <form method="post">
                    @csrf
                    <textarea class="bg-gray-800 text-white border border-gray-700 p-5 w-full h-24" name="num1"></textarea>
                    <br>
                    <textarea class="bg-gray-800 text-white border border-gray-700 p-5 w-full h-24" name="num2"></textarea>
                    <br>
                    <x-primary-button>Enviar</x-primary-button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
