# Nmax

This gem reads input data and output N biggest integers. Input data must be a text from command line.
Only one parameter is available: the number of N biggest integers. Integrated with Travis.

## Usage

You can't install it now, cause it's bad to load test projects in public repository.

But if i did, you would download it like this:

`gem install nmax`

You should give an input info to it from command line and one argument, which is a number of biggest integers you want to get.

***Example***:

```ruby
# text_file.txt has a string inside: '1 qwe2tr\n/n;esf,. 5rsgr98'
cat text_file.txt | nmax 2

# Output:
98
5
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Legatus88/nmax.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
