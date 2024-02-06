@extends('layouts.plantilla')

@section('title', 'Cursos /  Edit')

@section('content')
    <h1>Bienvenidos a la pagina de Edición de Curso</h1>
    <form action="{{route('cursos.update', $curso)}}" method="post">

        {{--En laravel cada que mandamos un post debemos anexar un token--}}
        @csrf
        {{--importamos el metodo put--}}
        @method('put')

        <label>
            Nombre:
            <br>
            <input type="text" name="name" value="{{$curso->name}}"/>
        </label>
        <br>
        <label>
            Descripción:
            <br>
            <textarea name="description" rows="5">{{$curso->description}}</textarea>
        </label>
        <br>
        <label>
            Categoria:
            <br>
            <input type="text" name="category" value="{{$curso->category}}"/>
        </label>
        <br>
        <input type="submit" value="Actualizar Formulario">
    </form>
@endsection()

