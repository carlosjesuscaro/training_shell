# Notes

- Standard Input, Output and Errors:
  - `0>` ~ StdnIn
  - `1>` ~ StdOut (also equivalent to just `>`)
  - `2>` ~ StdErr
- Sending the error from a command to a file: `cd hwbrke 2> logs.txt`
- Sending the error from a command to a file with a timestamp: `cd hwbrke 2>&1 | ts '[%Y-%m-%d %H:%M:%S]' > logs.txt`
  - The command `ts` is installed from the `moreutils` package
  - the `&` redirects the previous output (the error) as an output
- Special uses of `&`
  - At the end of a command -> to run the command in the background: `bash example.sh &`
  - In betweeen to commands (double) -> to run one command after another as long as the previous commands succeeds: `mkdir test && cd test`
  - Combining StdOut andf StdErr: `command 2>&1 | another_command`
  - 