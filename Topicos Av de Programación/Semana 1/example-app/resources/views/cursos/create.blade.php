@extends('layouts.plantilla')

@section('title', 'Cursos /  Create')

@section('content')
    <h1>Bienvenidos a la pagina de Cursos / Create</h1>
    <form action="{{route('cursos.store')}}" method="POST">

        {{--En laravel cada que mandamos un post debemos anexar un token--}}
        @csrf

        <label>
            Nombre:
            <br>
            <input type="text" name="name"/>
        </label>
        <br>
        <label>
            Descripción:
            <br>
            <textarea name="description" rows="5"></textarea>
        </label>
        <br>
        <label>
            Categoria:
            <br>
            <input type="text" name="category"/>
        </label>
        <br>
        <input type="submit" value="Enviar Formulario">
    </form>
@endsection()
