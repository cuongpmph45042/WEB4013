@extends('layouts.master')

@section('title')
    Danh mục sách
@endsection

@section('content')
    <h2 class="text-center text-uppercase">Sách theo thể loại</h2>
    <div class="row mt-3">
        @foreach ($books as $item)
            <div class="col-md-3 mt-3">
                <a href="{{ route('page.detail', $item->id) }}" class="mt-3 text-decoration-none text-dark">
                    <div class="d-flex justify-content-center">
                        <img src="{{ $item->thumbnail }}" class="rounded" width="150px" alt="">
                    </div>
                    <div>
                        {{ $item->title }}
                    </div>
                    <div>
                        Thể loại: {{ $item->name }}
                    </div>
                    <div class="text-danger">
                        {{ number_format($item->price, 0, ',', '.') }}đ
                    </div>
                </a>
            </div>
        @endforeach
    </div>
@endsection
