@foreach ([
        'layout',
        'page',
        'per-page',
        'sort-by',
        'collection',
    ] as $item)
        <input
            name="{{ $item }}"
            type="hidden"
            class="product-filter-item"
            value="{{ BaseHelper::stringify(request()->input($item)) }}"
        >
@endforeach

@if (request()->has('collections'))
    @foreach ((array) request()->input('collections', []) as $collection)
        <input
            name="collections[]"
            type="hidden"
            class="product-filter-item"
            value="{{ $collection }}"
        >
    @endforeach
@endif