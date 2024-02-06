@extends('layouts.plantilla')

@section('title', 'Cursos' . $curso->name)

@section('content')
    <h1><strong>Bienvenido a la pagina del Curso / </strong>{{$curso->name}}</h1>
    {{--Navegación por el crud--}}
    <a href="{{route('cursos.index')}}">Volver a Cursos</a>
    <br>
    <a href="{{route('cursos.edit', $curso)}}">Editar curso</a>

    <p><strong>Categoria:</strong> {{$curso->category}}</p>
    <p><strong>Descripción:</strong> {{$curso->description}}</p>
@endsection()
