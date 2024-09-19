<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm bg-info">

    <div class="container">
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-light" href="{{ route('page.home') }}">Trang chủ</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown">Danh
                    mục sách</a>
                <ul class="dropdown-menu">
                    @foreach ($categories as $item)
                        <li><a class="dropdown-item" href="{{ route('page.list-book', $item->id) }}">{{ $item->name }}</a></li>
                    @endforeach
                </ul>
            </li>
        </ul>
    </div>

</nav>
