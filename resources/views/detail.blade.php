@extends('layouts.master')

@section('title')
    Chi tiết
@endsection

@section('content')
    <div class="text-center">
        <img src="{{ $book->thumbnail }}" class="rounded" width="200" alt="">
    </div>
    <div class="mt-3">
        Tên sách: {{ $book->title }}
    </div>
    <div class="mt-3">
        Tác giả: {{ $book->author }}
    </div>
    <div class="mt-3">
        Nhà xuất bản: {{ $book->publisher }}
    </div>
    <div class="mt-3">
        Ngày xuất bản: {{ \Carbon\Carbon::parse($book->publication)->format('d-m-Y') }}
    </div>
    <div class="mt-3">
        Giá: {{ number_format($book->price, 0, ',', '.')}}
    </div>
    <div class="mt-3">
        Số lượng: {{ $book->quantity }}
    </div>
@endsection
