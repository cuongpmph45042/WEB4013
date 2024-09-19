@extends('layouts.master')

@section('title')
    Trang chủ
@endsection

@section('content')
    <h2 class="text-uppercase text-center">Top 8 sản phẩm giá cao nhất</h2>
    <div class="row mb-3">
        @foreach ($booksDesc as $item)
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
    <h2 class="text-uppercase text-center">Top 8 sản phẩm giá thấp nhất</h2>
    <div class="row">
        @foreach ($booksAsc as $item)
            <div class="col-md-3 mt-3">
                <a href="{{ route('page.detail', $item->id) }}" class="mt-3 text-decoration-none text-dark">
                    <div class="text-center">
                        <img src="{{ $item->thumbnail }}" width="150px" class="rounded" alt="">
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
