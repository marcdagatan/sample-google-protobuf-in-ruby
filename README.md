# sample-google-protobuf-in-ruby

Very simple implementation of `google-protobuf` in a Ruby project.

## Installation

1. Clone the repository.
2. Install the dependencies. (See below)
3. Run the project, `ruby test.rb`.

## Installing dependencies

Ruby version: 3.2.2

> I suggest installing ruby 3.2.2 through rbenv.

You need the latest version of protobuf compiler to use this.

**NOTE: Please do not install through, `apt-get`.**

> Honestly, installation instructions is not documented in the protobuf-compiler git repository nor in https://protobuf.dev.
> so i'm documenting this here for knowledge sharing to my peers.

Install by downloading the precompiled binaries. ->

Check for the latest `google-protobuf` releases [here](https://github.com/protocolbuffers/protobuf/releases).

At the time of writing, the latest stable release is 26.1. So, download the respective zip file that is appropriate for your os.
I'm currently running an ubuntu 22.04, so mine would look like:

```
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v26.1/protoc-26.1-linux-x86_64.zip
```

Then, unzip this to:

```
unzip protoc-26.1-linux-x86_64.zip -d $HOME/.local
```

Update your env path to include the `protoc` executable:

```
export PATH="$PATH:$HOME/.local/bin"
```

> I added the `export` to my `.zshrc` as well

Now, running a `protoc --version` should return `libprotoc 26.1`.

## Using protoc

Compiling `.proto` in ruby (for this example),

```
protoc -I . --ruby_out . user.proto
```

The output, which is already included in this project should be like `user_pb.rb`.

## Usage

Please check `test.rb` to see how this is used.

To run it, do a:
`ruby test.rb`

## Contributing

Contributions are welcome! Please follow these guidelines.

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
