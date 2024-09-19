<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function home() {
        //danh mục
        $categories = DB::table('categories')
            ->get();

        // 8 sản phẩm giá cao nhất
        $booksDesc = DB::table('books')
            ->join('categories', 'books.category_id', '=', 'categories.id')
            ->orderByDesc('price')
            ->limit(8)
            ->get();

        //8 sản phẩm giá thấp nhất
        $booksAsc = DB::table('books')
            ->join('categories', 'books.category_id', '=', 'categories.id')
            ->orderBy('price')
            ->limit(8)
            ->get();

        return view('home', compact('categories', 'booksDesc', 'booksAsc'));
    
    }

    public function list($category_id) {
        $categories = DB::table('categories')
            ->get();
        
        $books = DB::table('books')
            ->join('categories', 'books.category_id', '=', 'categories.id')
            ->where('category_id', $category_id)
            ->orderByDesc('books.price')
            ->get();
        return view('list-book', compact('categories','books'));
    }

    public function detail($id) {
        $categories = DB::table('categories')
            ->get();

        $book = DB::table('books')
            ->where('id', $id)
            ->first();
        return view('detail', compact('book', 'categories'));
    }
}
