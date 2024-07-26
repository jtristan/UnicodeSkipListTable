# UnicodeSkipListTable

A library to create and use Unicode tables based on the skip list data structure, following the design of the [Rust generator](https://github.com/rust-lang/rust/tree/master/src/tools/unicode-table-generator).

The [UnicodeSkipListTableExample](https://github.com/jtristan/UnicodeSkipListTableExample) is a working example showing how to use this library. 

Note that Rust's skip list is designed to minimize the memory usage for the Unicode property tables. This data structure exploits the "spatial" statistics of the codepoints, it is not a generic implementation of a skip list.
